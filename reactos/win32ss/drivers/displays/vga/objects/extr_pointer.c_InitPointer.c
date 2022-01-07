
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VIDEO_POINTER_ATTRIBUTES ;
typedef int ULONG ;
struct TYPE_7__ {int Width; int Height; int WidthInBytes; scalar_t__ Row; scalar_t__ Column; scalar_t__ Enable; scalar_t__ Flags; } ;
struct TYPE_5__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_6__ {int ImageBehindCursor; TYPE_4__* pPointerAttributes; TYPE_1__ xyHotSpot; } ;
typedef TYPE_2__* PPDEV ;
typedef int BOOL ;


 int ALLOC_TAG ;
 TYPE_4__* EngAllocMem (int ,int,int ) ;
 int TRUE ;
 int VGADDI_AllocSavedScreenBits (int) ;

BOOL InitPointer(PPDEV ppdev)
{
    ULONG CursorWidth = 32, CursorHeight = 32;
    ULONG PointerAttributesSize;
    ULONG SavedMemSize;

    ppdev->xyHotSpot.x = 0;
    ppdev->xyHotSpot.y = 0;


    PointerAttributesSize = sizeof(VIDEO_POINTER_ATTRIBUTES) +
      ((CursorWidth * CursorHeight * 2) >> 3);


    ppdev->pPointerAttributes = EngAllocMem(0, PointerAttributesSize, ALLOC_TAG);

    ppdev->pPointerAttributes->Flags = 0;
    ppdev->pPointerAttributes->Width = CursorWidth;
    ppdev->pPointerAttributes->Height = CursorHeight;
    ppdev->pPointerAttributes->WidthInBytes = CursorWidth >> 3;
    ppdev->pPointerAttributes->Enable = 0;
    ppdev->pPointerAttributes->Column = 0;
    ppdev->pPointerAttributes->Row = 0;


    SavedMemSize = ((((CursorWidth + 7) & ~0x7) + 16) * CursorHeight) >> 3;
    ppdev->ImageBehindCursor = VGADDI_AllocSavedScreenBits(SavedMemSize);

    return TRUE;
}
