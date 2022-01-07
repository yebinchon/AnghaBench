
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int wID; int uBand; } ;
struct TYPE_6__ {int DraggingBandId; int * Dragging; } ;
typedef TYPE_1__* PTOOLBAR_DOCKS ;
typedef int * PDOCKBAR_ITEM ;
typedef int LRESULT ;
typedef TYPE_2__* LPNMREBAR ;
typedef int DOCK_POSITION ;


 int FALSE ;
 int TRUE ;
 int * TbnDockbarItemFromBandId (TYPE_1__*,int ,int ) ;

__attribute__((used)) static LRESULT
TbnRebarBeginDrag(PTOOLBAR_DOCKS TbDocks,
                  DOCK_POSITION Position,
                  LPNMREBAR lpnmrb)
{
    PDOCKBAR_ITEM Item;

    Item = TbnDockbarItemFromBandId(TbDocks,
                                    Position,
                                    lpnmrb->uBand);

    if (Item != ((void*)0))
    {
        TbDocks->Dragging = Item;
        TbDocks->DraggingBandId = lpnmrb->wID;
        return FALSE;
    }

    return TRUE;
}
