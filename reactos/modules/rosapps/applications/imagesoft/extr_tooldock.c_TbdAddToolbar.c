
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {size_t Position; } ;
struct TYPE_16__ {int (* CreateClient ) (TYPE_1__*,TYPE_4__*,int ,int *,int *) ;} ;
struct TYPE_15__ {size_t PrevDock; struct TYPE_15__* Next; int hWndClient; TYPE_4__ DockBar; TYPE_3__ const* Callbacks; int * hWndTool; int Context; } ;
struct TYPE_14__ {TYPE_2__* Items; int ** hRebar; } ;
typedef int PVOID ;
typedef TYPE_1__* PTOOLBAR_DOCKS ;
typedef TYPE_2__* PDOCKBAR_ITEM ;
typedef int * HWND ;
typedef TYPE_3__ DOCKBAR_ITEM_CALLBACKS ;
typedef int DOCKBAR_ITEM ;
typedef TYPE_4__ DOCKBAR ;
typedef int BOOL ;


 int FALSE ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int ProcessHeap ;
 int TdbInsertToolbar (TYPE_1__*,TYPE_2__*,size_t) ;
 int stub1 (TYPE_1__*,TYPE_4__*,int ,int *,int *) ;

BOOL
TbdAddToolbar(PTOOLBAR_DOCKS TbDocks,
              const DOCKBAR *Dockbar,
              PVOID Context,
              const DOCKBAR_ITEM_CALLBACKS *Callbacks)
{
    PDOCKBAR_ITEM Item;
    HWND hRebar;

    hRebar = TbDocks->hRebar[Dockbar->Position];
    if (hRebar != ((void*)0))
    {
        Item = HeapAlloc(ProcessHeap,
                         0,
                         sizeof(DOCKBAR_ITEM));
        if (Item != ((void*)0))
        {

            Item->DockBar = *Dockbar;
            Item->Context = Context;
            Item->hWndTool = ((void*)0);
            Item->PrevDock = Dockbar->Position;

            Item->Callbacks = Callbacks;


            if (Callbacks->CreateClient != ((void*)0) &&
                !Callbacks->CreateClient(TbDocks,
                                         &Item->DockBar,
                                         Context,
                                         hRebar,
                                         &Item->hWndClient))
            {
                HeapFree(ProcessHeap,
                         0,
                         Item);

                return FALSE;
            }


            Item->Next = TbDocks->Items;
            TbDocks->Items = Item;

            return TdbInsertToolbar(TbDocks,
                                    Item,
                                    Dockbar->Position);
        }
    }

    return FALSE;
}
