do {
    $level = 0
    while ($true) {
        $inputLevel = (Read-Host "Which level are you grinding (1-5)").Trim()
        if ([int]::TryParse($inputLevel, [ref]$level)) {
            if ($level -ge 1 -and $level -le 5) {
                break
            }
        }
    }

    $server = ""
    while ($true) {
        $server = (Read-Host "Enter server type (big, small, vip)").ToLower().Trim()
        if ($server -in @("big", "small", "vip")) {
            break
        }
    }

    if ($server -eq "big") {
        $b = 100
        $d_array = @(0.44693, 0.21164, 0.13158, 0.11494, 0.07491)
    } else {
        $b = 66.66666
        $d_array = @(0.29795, 0.14109, 0.08772, 0.07663, 0.04994)
    }
    $d = $d_array[$level - 1]

    $c = -1.0
    while ($true) {
        $inputC = (Read-Host "Enter your progress (0-$b)").Replace(",", ".").Trim()
        if ([double]::TryParse($inputC, [System.Globalization.NumberStyles]::Any, [System.Globalization.CultureInfo]::InvariantCulture, [ref]$c)) {
            if ($c -ge 0 -and $c -le $b) {
                break
            }
        }
    }

    $a = [math]::Ceiling(($b - $c) / $d)

    Write-Host "Robberies left: " -NoNewline
    Write-Host $a -ForegroundColor Green

    $again = ""
    while ($true) {
        $again = (Read-Host "Calculate again (yes/no)").ToLower().Trim()
        if ($again -in @("yes", "no")) {
            break
        }
    }
} while ($again -eq "yes")