
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_10__ {int * hpalDefault; } ;
struct TYPE_9__ {int peRed; int peGreen; int peBlue; scalar_t__ peFlags; } ;
struct TYPE_8__ {int BitsPerPixel; int * DefaultPalette; TYPE_2__* PaletteEntries; int BlueMask; int GreenMask; int RedMask; } ;
typedef int * PULONG ;
typedef TYPE_1__* PPDEV ;
typedef TYPE_2__* PPALETTEENTRY ;
typedef TYPE_3__* PDEVINFO ;
typedef int PALETTEENTRY ;
typedef int BOOL ;


 int ALLOC_TAG ;
 scalar_t__ BASEPALETTE ;
 TYPE_2__* EngAllocMem (int ,int,int ) ;
 void* EngCreatePalette (int ,int,int *,int ,int ,int ) ;
 int FALSE ;
 int PAL_BITFIELDS ;
 int PAL_INDEXED ;
 int memcpy (TYPE_2__*,scalar_t__,int) ;

BOOL
IntInitDefaultPalette(
   PPDEV ppdev,
   PDEVINFO pDevInfo)
{
   ULONG ColorLoop;
   PPALETTEENTRY PaletteEntryPtr;

   if (ppdev->BitsPerPixel > 8)
   {
      ppdev->DefaultPalette = pDevInfo->hpalDefault =
         EngCreatePalette(PAL_BITFIELDS, 0, ((void*)0),
            ppdev->RedMask, ppdev->GreenMask, ppdev->BlueMask);
   }
   else
   {
      ppdev->PaletteEntries = EngAllocMem(0, sizeof(PALETTEENTRY) << 8, ALLOC_TAG);
      if (ppdev->PaletteEntries == ((void*)0))
      {
         return FALSE;
      }

      for (ColorLoop = 256, PaletteEntryPtr = ppdev->PaletteEntries;
           ColorLoop != 0;
           ColorLoop--, PaletteEntryPtr++)
      {
         PaletteEntryPtr->peRed = ((ColorLoop >> 5) & 7) * 255 / 7;
         PaletteEntryPtr->peGreen = ((ColorLoop >> 3) & 3) * 255 / 3;
         PaletteEntryPtr->peBlue = (ColorLoop & 7) * 255 / 7;
         PaletteEntryPtr->peFlags = 0;
      }

      memcpy(ppdev->PaletteEntries, BASEPALETTE, 10 * sizeof(PALETTEENTRY));
      memcpy(ppdev->PaletteEntries + 246, BASEPALETTE + 10, 10 * sizeof(PALETTEENTRY));

      ppdev->DefaultPalette = pDevInfo->hpalDefault =
         EngCreatePalette(PAL_INDEXED, 256, (PULONG)ppdev->PaletteEntries, 0, 0, 0);
    }

    return ppdev->DefaultPalette != ((void*)0);
}
