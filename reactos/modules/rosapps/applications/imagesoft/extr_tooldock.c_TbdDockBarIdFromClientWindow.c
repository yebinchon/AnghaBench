
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int BarId; } ;
struct TYPE_7__ {scalar_t__ hWndClient; struct TYPE_7__* Next; TYPE_1__ DockBar; } ;
struct TYPE_6__ {TYPE_3__* Items; } ;
typedef TYPE_2__* PTOOLBAR_DOCKS ;
typedef TYPE_3__* PDOCKBAR_ITEM ;
typedef scalar_t__ HWND ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

BOOL
TbdDockBarIdFromClientWindow(PTOOLBAR_DOCKS TbDocks,
                             HWND hWndClient,
                             UINT *Id)
{
    PDOCKBAR_ITEM Item;
    BOOL Ret = FALSE;

    Item = TbDocks->Items;
    while (Item != ((void*)0))
    {
        if (Item->hWndClient == hWndClient)
        {
            *Id = Item->DockBar.BarId;
            Ret = TRUE;
            break;
        }

        Item = Item->Next;
    }

    return Ret;
}
