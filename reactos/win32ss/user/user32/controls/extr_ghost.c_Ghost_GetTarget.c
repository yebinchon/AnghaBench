
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hwndTarget; } ;
typedef int * HWND ;
typedef TYPE_1__ GHOST_DATA ;


 TYPE_1__* Ghost_GetData (int *) ;

__attribute__((used)) static HWND
Ghost_GetTarget(HWND hwnd)
{
    GHOST_DATA *pData = Ghost_GetData(hwnd);
    if (!pData)
        return ((void*)0);
    return pData->hwndTarget;
}
