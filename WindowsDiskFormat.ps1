Param(
  $DriveLetter = "E",
  $PartitionStyle = "MBR",
  $FileSystem = "NTFS",
  $Number = 2
)
Get-Disk | where Number -match $Number | Initialize-Disk -PartitionStyle $PartitionStyle -PassThru | New-Partition -UseMaximumSize -DriveLetter $DriveLetter | Format-Volume -FileSystem NTFS -Force;
