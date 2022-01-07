
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int rbi ;
typedef int WPARAM ;
typedef int UINT ;
struct TYPE_23__ {scalar_t__ DisplayTextId; int Position; int BarId; } ;
struct TYPE_22__ {size_t PrevDock; int PrevBandIndex; TYPE_7__ DockBar; int * hWndClient; int Context; TYPE_1__* Callbacks; } ;
struct TYPE_21__ {int member_0; } ;
struct TYPE_20__ {int * hRebar; } ;
struct TYPE_19__ {int cbSize; int fMask; int * hwndChild; int * lpText; scalar_t__ lParam; int fStyle; int wID; int member_0; } ;
struct TYPE_18__ {int (* InsertBand ) (TYPE_3__*,TYPE_7__*,int ,int*,TYPE_2__*) ;int (* DockBand ) (TYPE_3__*,TYPE_7__*,int ,int const,int,TYPE_2__*) ;} ;
typedef TYPE_2__ REBARBANDINFO ;
typedef TYPE_3__* PTOOLBAR_DOCKS ;
typedef TYPE_4__ POINT ;
typedef TYPE_5__* PDOCKBAR_ITEM ;
typedef int * LPTSTR ;
typedef scalar_t__ LPARAM ;
typedef int HLOCAL ;
typedef size_t DOCK_POSITION ;
typedef int BOOL ;


 scalar_t__ AllocAndLoadString (int **,int ,scalar_t__) ;
 int FALSE ;
 int LocalFree (int ) ;

 int RBBIM_CHILD ;
 int RBBIM_ID ;
 int RBBIM_LPARAM ;
 int RBBIM_STYLE ;
 int RBBIM_TEXT ;
 int RBBS_GRIPPERALWAYS ;
 int RB_IDTOINDEX ;
 int RB_INSERTBAND ;
 int SendMessage (int ,int ,int ,scalar_t__) ;
 int TRUE ;
 int TbdCreateToolbarWnd (TYPE_3__*,TYPE_5__*,int,int,TYPE_2__*,TYPE_4__,int *,int,int) ;
 int hInstance ;
 int stub1 (TYPE_3__*,TYPE_7__*,int ,int*,TYPE_2__*) ;
 int stub2 (TYPE_3__*,TYPE_7__*,int ,int const,int,TYPE_2__*) ;

__attribute__((used)) static BOOL
TdbInsertToolbar(PTOOLBAR_DOCKS TbDocks,
                 PDOCKBAR_ITEM Item,
                 DOCK_POSITION Position)
{
    LPTSTR lpCaption = ((void*)0);
    REBARBANDINFO rbi = {0};
    BOOL Ret = FALSE;

    rbi.cbSize = sizeof(rbi);
    rbi.fMask = RBBIM_ID | RBBIM_STYLE | RBBIM_LPARAM;
    rbi.wID = Item->DockBar.BarId;
    rbi.fStyle = RBBS_GRIPPERALWAYS;
    rbi.lParam = (LPARAM)Item;

    if (Item->DockBar.DisplayTextId != 0)
    {
        if (AllocAndLoadString(&lpCaption,
                               hInstance,
                               Item->DockBar.DisplayTextId))
        {
            rbi.fMask |= RBBIM_TEXT;
            rbi.lpText = lpCaption;
        }
    }

    if (Item->hWndClient != ((void*)0))
    {
        rbi.fMask |= RBBIM_CHILD;
        rbi.hwndChild = Item->hWndClient;
    }

    switch (Item->DockBar.Position)
    {
        case 128:
        {
            POINT pt = {0};


            Ret = TbdCreateToolbarWnd(TbDocks,
                                      Item,
                                      Item->DockBar.Position,
                                      (UINT)-1,
                                      &rbi,
                                      pt,
                                      ((void*)0),
                                      (UINT)-1,
                                      FALSE);
            break;
        }

        default:
        {
            UINT Index = -1;
            BOOL AddBand = TRUE;

            if (Item->Callbacks->InsertBand != ((void*)0))
            {
                AddBand = Item->Callbacks->InsertBand(TbDocks,
                                                      &Item->DockBar,
                                                      Item->Context,
                                                      &Index,
                                                      &rbi);
            }

            if (AddBand)
            {
                Item->Callbacks->DockBand(TbDocks,
                                          &Item->DockBar,
                                          Item->Context,
                                          128,
                                          Item->DockBar.Position,
                                          &rbi);

                if (rbi.fMask & RBBIM_CHILD)
                    Item->hWndClient = rbi.hwndChild;
                else
                    Item->hWndClient = ((void*)0);

                Ret = SendMessage(TbDocks->hRebar[Position],
                                  RB_INSERTBAND,
                                  (WPARAM)Index,
                                  (LPARAM)&rbi) != 0;
                if (Ret)
                {
                    Item->PrevDock = Position;
                    Item->PrevBandIndex = (UINT)SendMessage(TbDocks->hRebar[Position],
                                                            RB_IDTOINDEX,
                                                            (WPARAM)Item->DockBar.BarId,
                                                            0);
                }
            }

            break;
        }
    }

    if (lpCaption != ((void*)0))
    {
        LocalFree((HLOCAL)lpCaption);
    }

    return Ret;
}
