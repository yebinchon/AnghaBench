
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int hwndTarget; } ;
typedef int HWND ;
typedef TYPE_1__ GHOST_DATA ;


 int FALSE ;
 int GHOST_INTERVAL ;
 scalar_t__ GHOST_TIMER_ID ;
 TYPE_1__* Ghost_GetData (int ) ;
 int Ghost_Unenchant (int ,int ) ;
 int IsHungAppWindow (int ) ;
 int IsWindow (int ) ;
 int KillTimer (int ,scalar_t__) ;
 int SetTimer (int ,scalar_t__,int ,int *) ;

__attribute__((used)) static void
Ghost_OnTimer(HWND hwnd, UINT id)
{
    HWND hwndTarget;
    GHOST_DATA *pData = Ghost_GetData(hwnd);

    if (id != GHOST_TIMER_ID || !pData)
        return;


    KillTimer(hwnd, id);

    hwndTarget = pData->hwndTarget;
    if (!IsWindow(hwndTarget) || !IsHungAppWindow(hwndTarget))
    {

        Ghost_Unenchant(hwnd, FALSE);
        return;
    }


    SetTimer(hwnd, GHOST_TIMER_ID, GHOST_INTERVAL, ((void*)0));
}
