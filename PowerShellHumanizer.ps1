##
## PowerShell Humanizer
## WahlPatr
##
## Resourcen:
## + https://github.com/dfinke/PowerShellHumanizer
##


return 'You shall not pass'

Install-Module powershellhumanizer

Get-Module powershellhumanizer -ListAvailable

Get-Command -Module Powershellhumanizer

## In Select
Get-Command -Module PowerShellHumanizer |  select Humanized, Name

## Singular / Plural

@('Person', 'Man', 'Woman', 'Knive') | ConvertTo-Plural

@('Person', 'Man', 'Woman', 'Knive') | ConvertTo-Plural | ConvertTo-Singular

## Numbers

112..122 | ConvertTo-OrdinalWords

112..122 | ConvertTo-RomanNumeral

(112).Ordinalize()

(113).ToWords()

"Now: $(Get-Date). In three weeks: $((Get-Date) + (3).Weeks)"

## Strings

'the true ninja doesn´t make a splash at all'.ToTitleCase()

'Knowing when to leave requires training'.Underscore()

'If they think first place is the winner, then they don´t know a ninja.'.Truncate(4, 'Words')

'I mean, we´re ninjas.'.Dehumanize()

## Date

(Get-date).Humanize()

$output = (get-date) - ((get-date).AddMinutes(-5))

$output

Remove-Module Powershellhumanizer

$output

## FileSytem Format

Get-ChildItem  # -> show in other terminal without PSHumanizer