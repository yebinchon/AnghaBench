
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int y; int x; } ;
struct TYPE_6__ {TYPE_1__ WindowOrigin; int AutoPosition; } ;
struct TYPE_7__ {TYPE_2__ GuiInfo; int hWindow; } ;
typedef TYPE_3__* PGUI_CONSOLE_DATA ;


 int SWP_NOACTIVATE ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int *,int ,int ,int ,int ,int) ;

VOID
GuiConsoleMoveWindow(PGUI_CONSOLE_DATA GuiData)
{

    if (!GuiData->GuiInfo.AutoPosition)
    {
        SetWindowPos(GuiData->hWindow,
                     ((void*)0),
                     GuiData->GuiInfo.WindowOrigin.x,
                     GuiData->GuiInfo.WindowOrigin.y,
                     0,
                     0,
                     SWP_NOZORDER | SWP_NOSIZE | SWP_NOACTIVATE);
    }
}
