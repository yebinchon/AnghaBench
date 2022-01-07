
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CheckDriveIndex (int ) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 char* safe_strdup (char*) ;
 int static_sprintf (char*,char*,int ) ;

char* GetPhysicalName(DWORD DriveIndex)
{
 BOOL success = FALSE;
 char physical_name[24];

 CheckDriveIndex(DriveIndex);
 static_sprintf(physical_name, "\\\\.\\PhysicalDrive%lu", DriveIndex);
 success = TRUE;
out:
 return (success)?safe_strdup(physical_name):((void*)0);
}
