
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WPARAM ;
typedef scalar_t__ WORD ;
typedef int VOID ;
struct TYPE_6__ {scalar_t__ FullScreen; } ;
struct TYPE_7__ {int IgnoreNextMouseSignal; int hWindow; TYPE_1__ GuiInfo; } ;
typedef TYPE_2__* PGUI_CONSOLE_DATA ;


 int DPRINT (char*,scalar_t__) ;
 int EnterFullScreen (TYPE_2__*) ;
 scalar_t__ LOWORD (int ) ;
 int LeaveFullScreen (TYPE_2__*) ;
 int SC_MINIMIZE ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;
 scalar_t__ WA_ACTIVE ;
 scalar_t__ WA_CLICKACTIVE ;
 int WM_SYSCOMMAND ;

__attribute__((used)) static VOID
OnActivate(PGUI_CONSOLE_DATA GuiData, WPARAM wParam)
{
    WORD ActivationState = LOWORD(wParam);

    DPRINT("WM_ACTIVATE - ActivationState = %d\n", ActivationState);

    if ( ActivationState == WA_ACTIVE ||
         ActivationState == WA_CLICKACTIVE )
    {
        if (GuiData->GuiInfo.FullScreen)
        {
            EnterFullScreen(GuiData);


        }
    }
    else
    {
        if (GuiData->GuiInfo.FullScreen)
        {
            SendMessageW(GuiData->hWindow, WM_SYSCOMMAND, SC_MINIMIZE, 0);
            LeaveFullScreen(GuiData);


        }
    }






    if (ActivationState == WA_CLICKACTIVE)
        GuiData->IgnoreNextMouseSignal = TRUE;
}
