
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ hwndFrom; int code; } ;
struct TYPE_9__ {scalar_t__* hRebar; } ;
typedef TYPE_1__* PTOOLBAR_DOCKS ;
typedef int LRESULT ;
typedef int LPNMREBARCHEVRON ;
typedef int LPNMREBAR ;
typedef TYPE_2__* LPNMHDR ;
typedef size_t DOCK_POSITION ;
typedef int BOOL ;


 int FALSE ;
 size_t NO_DOCK ;




 size_t TOP_DOCK ;
 int TRUE ;
 int TbnRebarBeginDrag (TYPE_1__*,size_t,int ) ;
 int TbnRebarChangeSize (TYPE_1__*,size_t) ;
 int TbnRebarChevronPushed (TYPE_1__*,size_t,int ) ;
 int TbnRebarEndDrag (TYPE_1__*,size_t,int ) ;

BOOL
TbdHandleNotifications(PTOOLBAR_DOCKS TbDocks,
                       LPNMHDR pnmh,
                       LRESULT *Result)
{
    BOOL Handled = FALSE;

    if (pnmh->hwndFrom != ((void*)0))
    {
        DOCK_POSITION Position;

        for (Position = TOP_DOCK; Position < NO_DOCK; Position++)
        {
            if (pnmh->hwndFrom == TbDocks->hRebar[Position])
            {
                switch (pnmh->code)
                {
                    case 128:
                    {
                        TbnRebarChangeSize(TbDocks,
                                           Position);
                        break;
                    }

                    case 131:
                    {
                        *Result = TbnRebarBeginDrag(TbDocks,
                                                    Position,
                                                    (LPNMREBAR)pnmh);
                        break;
                    }

                    case 129:
                    {
                        TbnRebarEndDrag(TbDocks,
                                        Position,
                                        (LPNMREBAR)pnmh);
                        break;
                    }

                    case 130:
                    {
                        TbnRebarChevronPushed(TbDocks,
                                              Position,
                                              (LPNMREBARCHEVRON)pnmh);
                        break;
                    }
                }

                Handled = TRUE;
                break;
            }
        }
    }

    return Handled;
}
