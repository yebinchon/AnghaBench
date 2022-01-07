
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hModule; struct TYPE_5__* lpNextItem; } ;
typedef TYPE_1__ WINE_DRIVER ;
typedef TYPE_1__* LPWINE_DRIVER ;
typedef scalar_t__ HMODULE ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 TYPE_1__* lpDrvItemList ;
 int mmdriver_lock ;

__attribute__((used)) static unsigned DRIVER_GetNumberOfModuleRefs(HMODULE hModule, WINE_DRIVER** found)
{
    LPWINE_DRIVER lpDrv;
    unsigned count = 0;

    EnterCriticalSection( &mmdriver_lock );

    if (found) *found = ((void*)0);
    for (lpDrv = lpDrvItemList; lpDrv; lpDrv = lpDrv->lpNextItem)
    {
 if (lpDrv->hModule == hModule)
        {
            if (found && !*found) *found = lpDrv;
     count++;
 }
    }

    LeaveCriticalSection( &mmdriver_lock );
    return count;
}
