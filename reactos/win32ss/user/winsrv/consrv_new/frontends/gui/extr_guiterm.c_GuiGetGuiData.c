
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hWindow; int * Console; } ;
typedef TYPE_1__* PGUI_CONSOLE_DATA ;
typedef scalar_t__ HWND ;


 int GWLP_USERDATA ;
 int GetWindowLongPtrW (scalar_t__,int ) ;

__attribute__((used)) static PGUI_CONSOLE_DATA
GuiGetGuiData(HWND hWnd)
{

    PGUI_CONSOLE_DATA GuiData = (PGUI_CONSOLE_DATA)GetWindowLongPtrW(hWnd, GWLP_USERDATA);
    return ( ((GuiData == ((void*)0)) || (GuiData->hWindow == hWnd && GuiData->Console != ((void*)0))) ? GuiData : ((void*)0) );
}
