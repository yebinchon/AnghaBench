
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int GetHandle (char*,int ,int ,int ) ;
 char* GetPhysicalName (int ) ;
 int INVALID_HANDLE_VALUE ;
 int safe_free (char*) ;

HANDLE GetPhysicalHandle(DWORD DriveIndex, BOOL bLockDrive, BOOL bWriteAccess, BOOL bWriteShare)
{
 HANDLE hPhysical = INVALID_HANDLE_VALUE;
 char* PhysicalPath = GetPhysicalName(DriveIndex);
 hPhysical = GetHandle(PhysicalPath, bLockDrive, bWriteAccess, bWriteShare);
 safe_free(PhysicalPath);
 return hPhysical;
}
