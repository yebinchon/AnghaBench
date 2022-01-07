
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hmmio; } ;
struct TYPE_6__ {TYPE_1__ info; struct TYPE_6__* lpNext; } ;
typedef TYPE_2__* LPWINE_MMIO ;
typedef scalar_t__ HMMIO ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 TYPE_2__* MMIOList ;
 int WINMM_cs ;

__attribute__((used)) static LPWINE_MMIO MMIO_Get(HMMIO h)
{
    LPWINE_MMIO wm = ((void*)0);

    EnterCriticalSection(&WINMM_cs);
    for (wm = MMIOList; wm; wm = wm->lpNext) {
 if (wm->info.hmmio == h)
     break;
    }
    LeaveCriticalSection(&WINMM_cs);
    return wm;
}
