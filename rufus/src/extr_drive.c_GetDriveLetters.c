
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;


 int _GetDriveLettersAndType (int ,char*,int *) ;

BOOL GetDriveLetters(DWORD DriveIndex, char* drive_letters)
{
 return _GetDriveLettersAndType(DriveIndex, drive_letters, ((void*)0));
}
