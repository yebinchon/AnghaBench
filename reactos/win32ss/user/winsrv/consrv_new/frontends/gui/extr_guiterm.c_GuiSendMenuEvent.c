
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_5__ {int dwCommandId; } ;
struct TYPE_6__ {TYPE_1__ MenuEvent; } ;
struct TYPE_7__ {TYPE_2__ Event; int EventType; } ;
typedef int PCONSOLE ;
typedef TYPE_3__ INPUT_RECORD ;


 int ConioProcessInputEvent (int ,TYPE_3__*) ;
 int MENU_EVENT ;

__attribute__((used)) static VOID
GuiSendMenuEvent(PCONSOLE Console, UINT CmdId)
{
    INPUT_RECORD er;

    er.EventType = MENU_EVENT;
    er.Event.MenuEvent.dwCommandId = CmdId;

    ConioProcessInputEvent(Console, &er);
}
