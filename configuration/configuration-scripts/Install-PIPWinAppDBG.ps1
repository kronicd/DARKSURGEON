﻿<#  
	.SYNOPSIS  
	Installs WinAppDbg from the Internet via Chocolatey. 

	.DESCRIPTION  
	Author: Dane Stuckey (@cryps1s)
	License: MIT  

	Performs a standard chocolatey installation of the most recent stable version of WinAppDbg. 

	.NOTES 
#>
  
Set-StrictMode -Version Latest

# Load the Install-ChocolateyPackage Function 
. "$($PSScriptRoot)\Install-ChocolateyPackage.ps1"

$PackageName = "winappdbg"
[Array] $OptionalArguments = "-source","python"

Try 
{
	Install-ChocolateyPackage -PackageName $PackageName -OptionalArguments $OptionalArguments
}
Catch 
{
	Write-Host "Fatal erorr installing package $PackageName. Exiting."	
	Exit 1
}