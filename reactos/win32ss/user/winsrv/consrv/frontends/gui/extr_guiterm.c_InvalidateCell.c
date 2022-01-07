
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ SMALL_RECT ;
typedef int SHORT ;
typedef int PGUI_CONSOLE_DATA ;


 int DrawRegion (int ,TYPE_1__*) ;

VOID
InvalidateCell(PGUI_CONSOLE_DATA GuiData,
               SHORT x, SHORT y)
{
    SMALL_RECT CellRect = { x, y, x, y };
    DrawRegion(GuiData, &CellRect);
}
