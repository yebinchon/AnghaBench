
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int bottom; int right; int left; int top; } ;
struct TYPE_7__ {TYPE_3__ rcClient; TYPE_1__* rcRebar; int ** hRebar; } ;
struct TYPE_6__ {scalar_t__ bottom; scalar_t__ right; } ;
typedef TYPE_2__* PTOOLBAR_DOCKS ;
typedef TYPE_3__* PRECT ;
typedef size_t INT ;


 size_t BOTTOM_DOCK ;
 size_t DOCKS_COUNT ;
 size_t LEFT_DOCK ;
 size_t RIGHT_DOCK ;
 size_t TOP_DOCK ;

INT
TbdAdjustUpdateClientRect(PTOOLBAR_DOCKS TbDocks,
                          PRECT rcClient)
{
    INT i, DocksVisible = 0;

    for (i = 0; i < DOCKS_COUNT; i++)
    {
        if (TbDocks->hRebar[i] != ((void*)0))
        {
            DocksVisible++;
        }
    }

    if (DocksVisible != 0)
    {
        rcClient->top += TbDocks->rcRebar[TOP_DOCK].bottom;
        rcClient->left += TbDocks->rcRebar[LEFT_DOCK].right;
        rcClient->right -= TbDocks->rcRebar[RIGHT_DOCK].right;
        rcClient->bottom -= TbDocks->rcRebar[BOTTOM_DOCK].bottom;
    }

    TbDocks->rcClient = *rcClient;

    return DocksVisible;
}
