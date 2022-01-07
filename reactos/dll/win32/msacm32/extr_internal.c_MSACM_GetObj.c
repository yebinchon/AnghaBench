
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WINE_ACMOBJ ;
struct TYPE_4__ {scalar_t__ dwType; } ;
typedef TYPE_1__* PWINE_ACMOBJ ;
typedef int HACMOBJ ;
typedef scalar_t__ DWORD ;


 scalar_t__ IsBadReadPtr (TYPE_1__*,int) ;
 scalar_t__ WINE_ACMOBJ_DONTCARE ;

PWINE_ACMOBJ MSACM_GetObj(HACMOBJ hObj, DWORD type)
{
    PWINE_ACMOBJ pao = (PWINE_ACMOBJ)hObj;

    if (pao == ((void*)0) || IsBadReadPtr(pao, sizeof(WINE_ACMOBJ)) ||
 ((type != WINE_ACMOBJ_DONTCARE) && (type != pao->dwType)))
 return ((void*)0);
    return pao;
}
