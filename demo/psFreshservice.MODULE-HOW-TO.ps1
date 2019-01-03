﻿<#

        MIT License

        Copyright (c) 2018 Matthew Oestreich

        Permission is hereby granted, free of charge, to any person obtaining a copy
        of this software and associated documentation files (the "Software"), to deal
        in the Software without restriction, including without limitation the rights
        to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
        copies of the Software, and to permit persons to whom the Software is
        furnished to do so, subject to the following conditions:

        The above copyright notice and this permission notice shall be included in all
        copies or substantial portions of the Software.

        THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
        IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
        FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
        AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
        LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
        OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
        SOFTWARE.

#>

# Import the module from wherever you saved it to
Import-Module "C:\Freshservice\Freshservice.psm1"

# Should return 'True' if successful, 'False' if not
# if your domain is google, dont put google.com or google.freshservice.com, just put google
Connect-Freshservice -Username "user@domain.com" -Password "!@#$%^&*((*&^%$#@!" -Domain "google" 

# Grab all users
$AllUsers = Get-FreshserviceUser  # No params means all users are returned

# Iterate through users
foreach($user in $AllUsers){
    Write-Host `r`n("=" * 50) -f Yellow
    Write-Host $user.name
    Write-Host $user
    Write-Host `r`n("=" * 50) -f Yellow
}

# Grab all tickets
$AllTickets = Get-FreshserviceTicket # No params means all tickets are returned

# Iterate through tickets
foreach($ticket in $AllTickets){
    Write-Host `r`n("=" * 50) -f Yellow
    Write-Host $ticket.id
    Write-Host $ticket
    Write-Host `r`n("=" * 50) -f Yellow    
}

