
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef int WINE_MMIO ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_6__ {scalar_t__ hmmio; } ;
struct TYPE_7__ {struct TYPE_7__* lpNext; TYPE_1__ info; } ;
typedef TYPE_2__* LPWINE_MMIO ;
typedef scalar_t__ HMMIO ;


 int EnterCriticalSection (int *) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int LeaveCriticalSection (int *) ;
 TYPE_2__* MMIOList ;
 scalar_t__ MMIO_Get (scalar_t__) ;
 int WINMM_cs ;

__attribute__((used)) static LPWINE_MMIO MMIO_Create(void)
{
    static WORD MMIO_counter = 0;
    LPWINE_MMIO wm;

    wm = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(WINE_MMIO));
    if (wm) {
 EnterCriticalSection(&WINMM_cs);

 while (++MMIO_counter == 0 || MMIO_Get((HMMIO)(ULONG_PTR)MMIO_counter));
 wm->info.hmmio = (HMMIO)(ULONG_PTR)MMIO_counter;
 wm->lpNext = MMIOList;
 MMIOList = wm;
 LeaveCriticalSection(&WINMM_cs);
    }
    return wm;
}
