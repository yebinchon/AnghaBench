
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_5__ {int LastErrorCode; } ;
struct TYPE_4__ {int DeviceInfo; int Win32Handle; } ;
typedef TYPE_1__* PDOS_FILE_DESCRIPTOR ;
typedef int DWORD ;
typedef int BOOLEAN ;


 TYPE_1__* DosGetHandleFileDescriptor (int ) ;
 int ERROR_INVALID_HANDLE ;
 int FALSE ;
 int FILE_INFO_DEVICE ;
 int GetLastError () ;
 int LockFile (int ,int ,int ,int ,int ) ;
 TYPE_2__* Sda ;
 int TRUE ;

BOOLEAN DosLockFile(WORD DosHandle, DWORD Offset, DWORD Size)
{
    PDOS_FILE_DESCRIPTOR Descriptor = DosGetHandleFileDescriptor(DosHandle);

    if (Descriptor == ((void*)0))
    {

        Sda->LastErrorCode = ERROR_INVALID_HANDLE;
        return FALSE;
    }


    if (Descriptor->DeviceInfo & FILE_INFO_DEVICE) return TRUE;

    if (!LockFile(Descriptor->Win32Handle, Offset, 0, Size, 0))
    {
        Sda->LastErrorCode = GetLastError();
        return FALSE;
    }

    return TRUE;
}
