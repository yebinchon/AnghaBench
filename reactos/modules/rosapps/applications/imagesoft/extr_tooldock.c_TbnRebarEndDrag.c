
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int uBand; } ;
typedef int PTOOLBAR_DOCKS ;
typedef int * PDOCKBAR_ITEM ;
typedef TYPE_1__* LPNMREBAR ;
typedef int DOCK_POSITION ;


 int * TbnDockbarItemFromBandId (int ,int ,int ) ;

__attribute__((used)) static VOID
TbnRebarEndDrag(PTOOLBAR_DOCKS TbDocks,
                DOCK_POSITION Position,
                LPNMREBAR lpnmrb)
{
    PDOCKBAR_ITEM Item;

    Item = TbnDockbarItemFromBandId(TbDocks,
                                    Position,
                                    lpnmrb->uBand);

    if (Item != ((void*)0))
    {

    }
}
