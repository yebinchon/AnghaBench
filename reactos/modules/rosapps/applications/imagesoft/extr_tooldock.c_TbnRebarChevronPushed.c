
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_9__ {int uBand; } ;
struct TYPE_8__ {int hWndClient; int Context; int DockBar; TYPE_1__* Callbacks; } ;
struct TYPE_7__ {int (* ChevronPushed ) (int ,int *,int ,int ,TYPE_3__*) ;} ;
typedef int PTOOLBAR_DOCKS ;
typedef TYPE_2__* PDOCKBAR_ITEM ;
typedef TYPE_3__* LPNMREBARCHEVRON ;
typedef int DOCK_POSITION ;


 TYPE_2__* TbnDockbarItemFromBandId (int ,int ,int ) ;
 int stub1 (int ,int *,int ,int ,TYPE_3__*) ;

__attribute__((used)) static VOID
TbnRebarChevronPushed(PTOOLBAR_DOCKS TbDocks,
                      DOCK_POSITION Position,
                      LPNMREBARCHEVRON lpnm)
{
    PDOCKBAR_ITEM Item;

    Item = TbnDockbarItemFromBandId(TbDocks,
                                    Position,
                                    lpnm->uBand);

    if (Item != ((void*)0) && Item->Callbacks->ChevronPushed)
    {
        Item->Callbacks->ChevronPushed(TbDocks,
                                       &Item->DockBar,
                                       Item->Context,
                                       Item->hWndClient,
                                       lpnm);
    }
}
