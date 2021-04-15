# Made by: Tiago Ramada
# Date: 14/04/2021


# Importamos a assembly para podermos criar uma janela
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

# Desenhar o a janela e os controlos
$Form_Window = New-Object System.Windows.Forms.Form
    $Form_Window.Text = "PowerShell"
    $Form_Window.Size = New-Object System.Drawing.Size(272,160)
    $Form_Window.FormBorderStyle = "FixedDialog"
    $Form_Window.TopMost = $true
    $Form_Window.MaximizeBox = $false
    $Form_Window.MinimizeBox = $false
    $Form_Window.ControlBox = $true
    $Form_Window.StartPosition = "CenterScreen"
    $Form_Window.Font = "Segoe UI"

# Adiciona uma label
$label_Window = New-Object System.Windows.Forms.Label
    $label_Window.Location = New-Object System.Drawing.Size(8,8)
    $label_Window.Size = New-Object System.Drawing.Size(240,32)
    $label_Window.TextAlign = "MiddleCenter"
    $label_Window.Text = "This will resart your computer when you press the button"
    $Form_Window.Controls.Add($label_Window)


# Adiciona o restart button
$button_ClickMe = New-Object System.Windows.Forms.Button
   $button_ClickMe.Location = New-Object System.Drawing.Size(8,80)
   $button_ClickMe.Size = New-Object System.Drawing.Size(240,32)
   $button_ClickMe.TextAlign = "MiddleCenter"
   $button_ClickMe.Text = "Click here to restart"
   $button_ClickMe.Add_Click({
        $button_ClickMe.Text = "Good-Bye!"
        Restart-Computer
   })
   $Form_Window.Controls.Add($button_ClickMe)

# Mostra a janela
$Form_Window.Add_Shown({$Form_Window.Activate()})
[void] $Form_Window.ShowDialog()