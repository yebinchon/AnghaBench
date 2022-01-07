
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int rbi ;
typedef int WPARAM ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {int * hRebar; } ;
struct TYPE_4__ {int cbSize; int lParam; int fMask; int member_0; } ;
typedef TYPE_1__ REBARBANDINFO ;
typedef TYPE_2__* PTOOLBAR_DOCKS ;
typedef int * PDOCKBAR_ITEM ;
typedef int LPARAM ;
typedef size_t DOCK_POSITION ;


 int RBBIM_LPARAM ;
 int RB_GETBANDINFO ;
 scalar_t__ SendMessage (int ,int ,int ,int ) ;

__attribute__((used)) static PDOCKBAR_ITEM
TbnDockbarItemFromBandId(PTOOLBAR_DOCKS TbDocks,
                         DOCK_POSITION Position,
                         UINT uBand)
{
    REBARBANDINFO rbi = {0};

    rbi.cbSize = sizeof(rbi);
    rbi.fMask = RBBIM_LPARAM;

    if (SendMessage(TbDocks->hRebar[Position],
                    RB_GETBANDINFO,
                    (WPARAM)uBand,
                    (LPARAM)&rbi))
    {
        return (PDOCKBAR_ITEM)rbi.lParam;
    }

    return ((void*)0);
}
