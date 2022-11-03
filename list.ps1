Import-Csv .\students.csv | ForEach-Object {
    Write-Host "$($_.first_name) $($_.last_name), whose Employee ID is $($_.id), was born on $($_.date_of_birth)."
}
