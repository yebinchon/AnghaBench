
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pFilter; int dir; int achName; } ;
typedef TYPE_1__ PIN_INFO ;


 int strcpyW (int ,int ) ;

__attribute__((used)) static void Copy_PinInfo(PIN_INFO * pDest, const PIN_INFO * pSrc)
{




    strcpyW(pDest->achName, pSrc->achName);
    pDest->dir = pSrc->dir;
    pDest->pFilter = pSrc->pFilter;
}
