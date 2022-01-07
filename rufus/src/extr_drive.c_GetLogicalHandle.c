
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int * HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int * GetHandle (char*,int ,int ,int ) ;
 char* GetLogicalName (int ,int ,int ,int ) ;
 int * INVALID_HANDLE_VALUE ;
 int free (char*) ;
 int uprintf (char*) ;

HANDLE GetLogicalHandle(DWORD DriveIndex, uint64_t PartitionOffset, BOOL bLockDrive, BOOL bWriteAccess, BOOL bWriteShare)
{
 HANDLE hLogical = INVALID_HANDLE_VALUE;
 char* LogicalPath = GetLogicalName(DriveIndex, PartitionOffset, FALSE, FALSE);

 if (LogicalPath == ((void*)0)) {
  uprintf("No logical drive found (unpartitioned?)");
  return ((void*)0);
 }

 hLogical = GetHandle(LogicalPath, bLockDrive, bWriteAccess, bWriteShare);
 free(LogicalPath);
 return hLogical;
}
