
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PPDEV ;
typedef int DEVINFO ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int bInitDefaultPalette (int ,int *) ;

BOOL bInitPaletteInfo(PPDEV ppdev, DEVINFO *pDevInfo)
{
    if (!bInitDefaultPalette(ppdev, pDevInfo))
        return(FALSE);

    return(TRUE);
}
