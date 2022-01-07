
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ pPal; scalar_t__ hpalDefault; } ;
typedef int PVOID ;
typedef TYPE_1__* PPDEV ;
typedef scalar_t__ PPALETTEENTRY ;
typedef scalar_t__ HPALETTE ;


 int EngDeletePalette (scalar_t__) ;
 int EngFreeMem (int ) ;

VOID vDisablePalette(PPDEV ppdev)
{


    if (ppdev->hpalDefault)
    {
        EngDeletePalette(ppdev->hpalDefault);
        ppdev->hpalDefault = (HPALETTE) 0;
    }







}
