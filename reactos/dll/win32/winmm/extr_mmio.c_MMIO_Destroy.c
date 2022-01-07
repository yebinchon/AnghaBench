
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* lpNext; } ;
typedef TYPE_1__* LPWINE_MMIO ;
typedef int BOOL ;


 int EnterCriticalSection (int *) ;
 int FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int LeaveCriticalSection (int *) ;
 TYPE_1__* MMIOList ;
 int TRUE ;
 int WINMM_cs ;

__attribute__((used)) static BOOL MMIO_Destroy(LPWINE_MMIO wm)
{
    LPWINE_MMIO* m;

    EnterCriticalSection(&WINMM_cs);

    m = &MMIOList;
    while (*m && *m != wm) m = &(*m)->lpNext;

    if (*m) {
 *m = (*m)->lpNext;
 HeapFree(GetProcessHeap(), 0, wm);
 wm = ((void*)0);
    }
    LeaveCriticalSection(&WINMM_cs);
    return wm ? FALSE : TRUE;
}
