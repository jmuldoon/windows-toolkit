param(
  [switch]$enabled=$false
) #Must be the first statement in your script

# For the full list of options, use this.
# Get-WindowsOptionalFeature -Online

# TODO: do we want this?
# FeatureName : HypervisorPlatform
# State       : Disabled

if ($enabled) {
  Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
} else {
  Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
}
