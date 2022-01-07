
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Lock; } ;
struct TYPE_5__ {TYPE_2__* Console; } ;
typedef TYPE_1__* PGUI_CONSOLE_DATA ;
typedef TYPE_2__* PCONSRV_CONSOLE ;
typedef int PCONSOLE ;
typedef int BOOL ;


 int CONSOLE_RUNNING ;
 int CTRL_CLOSE_EVENT ;
 int ConDrvValidateConsoleUnsafe (int ,int ,int ) ;
 int ConSrvConsoleProcessCtrlEvent (TYPE_2__*,int ,int ) ;
 int FALSE ;
 int LeaveCriticalSection (int *) ;
 int TRUE ;

__attribute__((used)) static BOOL
OnClose(PGUI_CONSOLE_DATA GuiData)
{
    PCONSRV_CONSOLE Console = GuiData->Console;

    if (!ConDrvValidateConsoleUnsafe((PCONSOLE)Console, CONSOLE_RUNNING, TRUE))
        return TRUE;
    ConSrvConsoleProcessCtrlEvent(Console, 0, CTRL_CLOSE_EVENT);

    LeaveCriticalSection(&Console->Lock);
    return FALSE;
}
