do {
    while ($true) {
        $levelInput = Read-Host "What level are you grinding (1-5)"
        if ($levelInput -match '^[1-5]$') {
            $level = [int]$levelInput
            break
        }
        Write-Host "Invalid input. Enter a number from 1 to 5." -ForegroundColor Red
    }

    while ($true) {
        $serverType = Read-Host "Enter server type (vip, small, big)"
        if ($serverType -in @("vip", "small", "big")) {
            break
        }
        Write-Host "Invalid input. Enter: vip, small or big." -ForegroundColor Red
    }

    $dVipSmall = @(0.29795, 0.14109, 0.08772, 0.07663, 0.04994)
    $dBig      = @(0.44693, 0.21164, 0.13158, 0.11494, 0.07491)

    if ($serverType -eq "big") {
        $b = 100.0
        $d = $dBig[$level - 1]
    } else {
        $b = 66.66666
        $d = $dVipSmall[$level - 1]
    }

    while ($true) {
        $cInput = Read-Host "Enter your pity progress (0-$b)"
        if ($cInput -match '^[0-9]+(\.[0-9]+)?$') {
            $c = [double]$cInput
            if ($c -ge 0 -and $c -le $b) {
                break
            }
        }
        Write-Host "Invalid input. Enter a number between 0 and $b." -ForegroundColor Red
    }

    $a = [Math]::Ceiling(($b - $c) / $d)
    Write-Host "Robberies left: " -NoNewline
    Write-Host $a -ForegroundColor Green

    while ($true) {
        $again = Read-Host "Calculate again (yes/no)"
        if ($again -in @("yes", "no")) {
            break
        }
        Write-Host "Invalid input. Enter: yes or no." -ForegroundColor Red
    }

} while ($again -eq "yes")