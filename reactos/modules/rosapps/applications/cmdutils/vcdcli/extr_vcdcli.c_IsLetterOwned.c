
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
struct TYPE_3__ {size_t Count; scalar_t__* Drives; } ;
typedef scalar_t__ HANDLE ;
typedef int Drives ;
typedef size_t DWORD ;
typedef TYPE_1__ DRIVES_LIST ;
typedef int BOOLEAN ;


 int CloseHandle (scalar_t__) ;
 int DeviceIoControl (scalar_t__,int ,int *,int ,TYPE_1__*,int,size_t*,int *) ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IOCTL_VCDROM_ENUMERATE_DRIVES ;
 scalar_t__ OpenMaster () ;
 int TRUE ;
 int _T (char*) ;
 int _ftprintf (int ,int ,scalar_t__) ;
 int stderr ;

BOOLEAN
IsLetterOwned(WCHAR Letter)
{
    HANDLE hDev;
    BOOLEAN Res;
    DRIVES_LIST Drives;
    DWORD i, BytesRead;


    hDev = OpenMaster();
    if (hDev == INVALID_HANDLE_VALUE)
    {
        _ftprintf(stderr, _T("Failed to open VCD: %x\n"), GetLastError());
        return FALSE;
    }


    Res = DeviceIoControl(hDev, IOCTL_VCDROM_ENUMERATE_DRIVES, ((void*)0), 0, &Drives, sizeof(Drives), &BytesRead, ((void*)0));
    if (!Res)
    {
        _ftprintf(stderr, _T("Failed to enumerate drives: %x\n"), GetLastError());
        CloseHandle(hDev);
        return FALSE;
    }


    CloseHandle(hDev);


    for (i = 0; i < Drives.Count; ++i)
    {
        if (Drives.Drives[i] == Letter)
        {
            break;
        }
    }


    if (i == Drives.Count)
    {
        _ftprintf(stderr, _T("%c is not a drive owned by VCD\n"), Letter);
        return FALSE;
    }


    return TRUE;
}
