
$HKLM_BASE_PATH='HKLM:\\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
$PropertyName='DisallowShaking'

# Get-ChildItem -Path $HKLM_BASE_PATH
if (Test-Path -Path $HKLM_BASE_PATH) {
  New-ItemProperty -Path $HKLM_BASE_PATH -Name $PropertyName -Value "1"  -PropertyType "REG_DWORD"
}
