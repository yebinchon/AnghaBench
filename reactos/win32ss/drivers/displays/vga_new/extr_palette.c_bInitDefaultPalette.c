
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_10__ {int palPalEntry; } ;
struct TYPE_9__ {scalar_t__ hpalDefault; } ;
struct TYPE_8__ {void* peFlags; void* peBlue; void* peGreen; void* peRed; } ;
struct TYPE_7__ {int ulBitCount; scalar_t__ hpalDefault; int flBlue; int flGreen; int flRed; TYPE_2__* pPal; } ;
typedef int PULONG ;
typedef TYPE_1__* PPDEV ;
typedef TYPE_2__* PPALETTEENTRY ;
typedef int PALETTEENTRY ;
typedef scalar_t__ HPALETTE ;
typedef TYPE_3__ DEVINFO ;
typedef void* BYTE ;
typedef int BOOL ;


 int ALLOC_TAG ;
 void** BASEPALETTE ;
 scalar_t__ EngAllocMem (int ,int,int ) ;
 void* EngCreatePalette (int ,int,int ,int ,int ,int ) ;
 int FALSE ;
 int PAL_BITFIELDS ;
 int PAL_INDEXED ;
 int RIP (char*) ;
 int TRUE ;
 TYPE_4__ logPalVGA ;

BOOL bInitDefaultPalette(PPDEV ppdev, DEVINFO *pDevInfo)
{
        ppdev->hpalDefault =
        pDevInfo->hpalDefault = EngCreatePalette(PAL_INDEXED,

                                                   16,
                                                   (PULONG) &logPalVGA.palPalEntry,

                                                   0,0,0);

        if (ppdev->hpalDefault == (HPALETTE) 0)
        {
            RIP("DISP bInitDefaultPalette failed EngCreatePalette\n");



            return(FALSE);
        }





        return(TRUE);
}
