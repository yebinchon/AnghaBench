
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsIDOMKeyEvent ;
typedef scalar_t__ cpp_bool ;
struct TYPE_5__ {TYPE_1__* doc_obj; } ;
struct TYPE_4__ {int nscontainer; } ;
typedef TYPE_2__ HTMLDocument ;


 int do_ns_editor_command (int ,char const* const) ;
 int nsIDOMKeyEvent_GetCtrlKey (int *,scalar_t__*) ;
 int nsIDOMKeyEvent_GetShiftKey (int *,scalar_t__*) ;
 int nsIDOMKeyEvent_PreventDefault (int *) ;

__attribute__((used)) static void handle_arrow_key(HTMLDocument *This, nsIDOMKeyEvent *event, const char * const cmds[4])
{
    int i=0;
    cpp_bool b;

    nsIDOMKeyEvent_GetCtrlKey(event, &b);
    if(b)
        i |= 1;

    nsIDOMKeyEvent_GetShiftKey(event, &b);
    if(b)
        i |= 2;

    if(cmds[i])
        do_ns_editor_command(This->doc_obj->nscontainer, cmds[i]);

    nsIDOMKeyEvent_PreventDefault(event);
}
