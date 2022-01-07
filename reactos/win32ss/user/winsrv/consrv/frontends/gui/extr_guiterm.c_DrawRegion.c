
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int hWindow; } ;
typedef int SMALL_RECT ;
typedef int RECT ;
typedef TYPE_1__* PGUI_CONSOLE_DATA ;


 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 int SmallRectToRect (TYPE_1__*,int *,int *) ;

__attribute__((used)) static VOID
DrawRegion(PGUI_CONSOLE_DATA GuiData,
           SMALL_RECT* Region)
{
    RECT RegionRect;

    SmallRectToRect(GuiData, &RegionRect, Region);

    InvalidateRect(GuiData->hWindow, &RegionRect, FALSE);

}
