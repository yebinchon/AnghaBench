
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int x; int y; } ;
struct TYPE_8__ {int * hRebar; } ;
struct TYPE_7__ {int top; int bottom; int left; int right; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__* PTOOLBAR_DOCKS ;
typedef TYPE_3__ POINT ;
typedef size_t DOCK_POSITION ;



 int GetWindowRect (int ,TYPE_1__*) ;




__attribute__((used)) static UINT
TbdCalculateInsertIndex(PTOOLBAR_DOCKS TbDocks,
                        DOCK_POSITION Position,
                        POINT pt)
{
    RECT rcRebar;
    UINT Ret = 0;

    GetWindowRect(TbDocks->hRebar[Position],
                  &rcRebar);

    switch (Position)
    {
        case 128:
        case 131:
            if (pt.y > rcRebar.top + ((rcRebar.bottom - rcRebar.top) / 2))
                Ret = (UINT)-1;
            break;

        case 130:
        case 129:
            if (pt.x > rcRebar.left + ((rcRebar.right - rcRebar.left) / 2))
                Ret = (UINT)-1;
            break;

        default:
            break;
    }

    return Ret;
}
