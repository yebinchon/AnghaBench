
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ wDeviceID; struct TYPE_4__* lpNext; } ;
typedef TYPE_1__* LPWINE_MCIDRIVER ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 TYPE_1__* MciDrivers ;
 int WINMM_cs ;

__attribute__((used)) static LPWINE_MCIDRIVER MCI_GetDriver(UINT wDevID)
{
    LPWINE_MCIDRIVER wmd = 0;

    EnterCriticalSection(&WINMM_cs);
    for (wmd = MciDrivers; wmd; wmd = wmd->lpNext) {
 if (wmd->wDeviceID == wDevID)
     break;
    }
    LeaveCriticalSection(&WINMM_cs);
    return wmd;
}
