
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {int Context; int (* ParentResize ) (int ,scalar_t__,scalar_t__) ;int hParent; TYPE_1__* rcRebar; int * hRebar; } ;
struct TYPE_7__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; int member_0; } ;
struct TYPE_6__ {void* right; void* bottom; scalar_t__ top; scalar_t__ left; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__* PTOOLBAR_DOCKS ;
typedef void* LONG ;
typedef size_t DOCK_POSITION ;



 int GetClientRect (int ,TYPE_2__*) ;

 int RB_GETBARHEIGHT ;

 scalar_t__ SendMessage (int ,int ,int ,int ) ;

 int stub1 (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static VOID
TbnRebarChangeSize(PTOOLBAR_DOCKS TbDocks,
                   DOCK_POSITION Position)
{
    LONG cRebar;

    TbDocks->rcRebar[Position].left = 0;
    TbDocks->rcRebar[Position].top = 0;

    cRebar = (LONG)SendMessage(TbDocks->hRebar[Position],
                               RB_GETBARHEIGHT,
                               0,
                               0);

    switch (Position)
    {
        case 128:
        case 131:
            TbDocks->rcRebar[Position].bottom = cRebar;
            break;

        case 130:
        case 129:
            TbDocks->rcRebar[Position].right = cRebar;
            break;

        default:
            break;
    }

    if (TbDocks->ParentResize != ((void*)0))
    {
        RECT rcClient = {0};

        GetClientRect(TbDocks->hParent,
                      &rcClient);

        TbDocks->ParentResize(TbDocks->Context,
                              rcClient.right - rcClient.left,
                              rcClient.bottom - rcClient.top);
    }
}
