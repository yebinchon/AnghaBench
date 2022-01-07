
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dwPrivate; struct TYPE_5__* lpstrElementName; struct TYPE_5__* lpstrAlias; struct TYPE_5__* lpstrDeviceType; struct TYPE_5__* lpNext; int hDriver; } ;
typedef TYPE_1__* LPWINE_MCIDRIVER ;
typedef int BOOL ;


 int CloseDriver (int ,int ,int ) ;
 int EnterCriticalSection (int *) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int LeaveCriticalSection (int *) ;
 TYPE_1__* MciDrivers ;
 int TRUE ;
 int WARN (char*) ;
 int WINMM_cs ;

__attribute__((used)) static BOOL MCI_UnLoadMciDriver(LPWINE_MCIDRIVER wmd)
{
    LPWINE_MCIDRIVER* tmp;

    if (!wmd)
 return TRUE;

    CloseDriver(wmd->hDriver, 0, 0);

    if (wmd->dwPrivate != 0)
 WARN("Unloading mci driver with non nul dwPrivate field\n");

    EnterCriticalSection(&WINMM_cs);
    for (tmp = &MciDrivers; *tmp; tmp = &(*tmp)->lpNext) {
 if (*tmp == wmd) {
     *tmp = wmd->lpNext;
     break;
 }
    }
    LeaveCriticalSection(&WINMM_cs);

    HeapFree(GetProcessHeap(), 0, wmd->lpstrDeviceType);
    HeapFree(GetProcessHeap(), 0, wmd->lpstrAlias);
    HeapFree(GetProcessHeap(), 0, wmd->lpstrElementName);

    HeapFree(GetProcessHeap(), 0, wmd);
    return TRUE;
}
