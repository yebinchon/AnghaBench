
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int DWORD ;


 int _GetDriveLettersAndType (int ,int *,int *) ;

UINT GetDriveTypeFromIndex(DWORD DriveIndex)
{
 UINT drive_type;
 _GetDriveLettersAndType(DriveIndex, ((void*)0), &drive_type);
 return drive_type;
}
