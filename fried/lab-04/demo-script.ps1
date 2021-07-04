function Create-GreenMessage
{
    param
    (
        [Parameter(Mandatory=$true)]
        $Message
    )

    Write-Host $Message -ForegroundColor Blue
}

Create-BlueMessage -Message "My master Message"
Create-BlueMessage -Message "Master Message!"
Create-BlueMessage -Message "Feature Message!"
