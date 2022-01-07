
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bottom; scalar_t__ left; scalar_t__ top; scalar_t__ right; } ;
struct TYPE_7__ {TYPE_2__* rcRebar; TYPE_1__ rcClient; int ** hRebar; } ;
struct TYPE_6__ {scalar_t__ bottom; scalar_t__ right; } ;
typedef TYPE_3__* PTOOLBAR_DOCKS ;
typedef scalar_t__ LONG ;
typedef int * HDWP ;


 size_t BOTTOM_DOCK ;
 int * DeferWindowPos (int *,int *,int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 size_t LEFT_DOCK ;
 size_t RIGHT_DOCK ;
 int SWP_NOZORDER ;
 size_t TOP_DOCK ;

HDWP
TbdDeferDocks(HDWP hWinPosInfo,
              PTOOLBAR_DOCKS TbDocks)
{
    LONG cx, cy;
    HDWP hRet = hWinPosInfo;

    cx = TbDocks->rcClient.right - TbDocks->rcClient.left;
    cy = TbDocks->rcClient.bottom - TbDocks->rcClient.top;


    if (TbDocks->hRebar[TOP_DOCK] != ((void*)0))
    {
        hRet = DeferWindowPos(hRet,
                              TbDocks->hRebar[TOP_DOCK],
                              ((void*)0),
                              TbDocks->rcClient.left - TbDocks->rcRebar[LEFT_DOCK].right,
                              TbDocks->rcClient.top - TbDocks->rcRebar[TOP_DOCK].bottom,
                              cx + TbDocks->rcRebar[LEFT_DOCK].right + TbDocks->rcRebar[RIGHT_DOCK].right,
                              TbDocks->rcRebar[TOP_DOCK].bottom,
                              SWP_NOZORDER);
        if (hRet == ((void*)0))
            return ((void*)0);
    }


    if (TbDocks->hRebar[LEFT_DOCK] != ((void*)0))
    {
        hRet = DeferWindowPos(hRet,
                              TbDocks->hRebar[LEFT_DOCK],
                              ((void*)0),
                              TbDocks->rcClient.left - TbDocks->rcRebar[LEFT_DOCK].right,
                              TbDocks->rcClient.top,
                              TbDocks->rcRebar[LEFT_DOCK].right,
                              cy,
                              SWP_NOZORDER);
        if (hRet == ((void*)0))
            return ((void*)0);
    }


    if (TbDocks->hRebar[RIGHT_DOCK] != ((void*)0))
    {
        hRet = DeferWindowPos(hRet,
                              TbDocks->hRebar[RIGHT_DOCK],
                              ((void*)0),
                              TbDocks->rcClient.right,
                              TbDocks->rcClient.top,
                              TbDocks->rcRebar[RIGHT_DOCK].right,
                              cy,
                              SWP_NOZORDER);
        if (hRet == ((void*)0))
            return ((void*)0);
    }


    if (TbDocks->hRebar[BOTTOM_DOCK] != ((void*)0))
    {
        hRet = DeferWindowPos(hRet,
                              TbDocks->hRebar[BOTTOM_DOCK],
                              ((void*)0),
                              TbDocks->rcClient.left - TbDocks->rcRebar[LEFT_DOCK].right,
                              TbDocks->rcClient.bottom,
                              cx + TbDocks->rcRebar[LEFT_DOCK].right + TbDocks->rcRebar[RIGHT_DOCK].right,
                              TbDocks->rcRebar[BOTTOM_DOCK].bottom,
                              SWP_NOZORDER);
        if (hRet == ((void*)0))
            return ((void*)0);
    }

    return hRet;
}
