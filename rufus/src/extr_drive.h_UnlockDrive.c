
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int DeviceIoControl (int ,int ,int *,int ,int *,int ,int *,int *) ;
 int FSCTL_UNLOCK_VOLUME ;

__attribute__((used)) static __inline BOOL UnlockDrive(HANDLE hDrive) {
 DWORD size;
 return DeviceIoControl(hDrive, FSCTL_UNLOCK_VOLUME, ((void*)0), 0, ((void*)0), 0, &size, ((void*)0));
}
