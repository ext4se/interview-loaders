Function Find-Employee {
    param (
        # Parameter accepts the employee id to be searched.
        [Parameter(Mandatory)]
        $EmployeeID
    )

    # Import the contents of the employee.csv file and store it in the $employee_list variable.
    $employee_list = Import-Csv .\students.csv

    # Loop through all the records in the CSV
    foreach ($employee in $employee_list) {

        # Check if the current record's employee ID is equal to the value of the EmployeeID parameter.
        if ($employee.id -eq $EmployeeID) {

            # If the EmployeeID is found, display the record on the console.
            Write-Host "$($_.first_name) $($_.last_name), whose Employee ID is $($_.id), was born on $($_.date_of_birth)."
        }
    }
}