
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bSetFocus; } ;
struct TYPE_6__ {TYPE_1__ FocusEvent; } ;
struct TYPE_7__ {TYPE_2__ Event; } ;
typedef TYPE_3__ INPUT_RECORD ;


 scalar_t__ g_fJustGotFocus ;
 int ui_focus_change (int) ;

__attribute__((used)) static void
handle_focus_event(INPUT_RECORD ir)
{
    g_fJustGotFocus = ir.Event.FocusEvent.bSetFocus;
    ui_focus_change((int)g_fJustGotFocus);
}
