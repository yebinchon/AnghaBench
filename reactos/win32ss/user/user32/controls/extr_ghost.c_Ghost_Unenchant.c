
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bDestroyTarget; } ;
typedef int HWND ;
typedef TYPE_1__ GHOST_DATA ;
typedef int BOOL ;


 int DestroyWindow (int ) ;
 TYPE_1__* Ghost_GetData (int ) ;

__attribute__((used)) static void
Ghost_Unenchant(HWND hwnd, BOOL bDestroyTarget)
{
    GHOST_DATA *pData = Ghost_GetData(hwnd);
    if (!pData)
        return;

    pData->bDestroyTarget |= bDestroyTarget;
    DestroyWindow(hwnd);
}
