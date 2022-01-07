
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int guid; } ;
struct TYPE_4__ {int script_hosts; } ;
typedef TYPE_1__ HTMLInnerWindow ;
typedef int GUID ;


 int CLSID_JScript ;
 TYPE_3__* LIST_ENTRY (int ,int ,int ) ;
 int ScriptHost ;
 int entry ;
 scalar_t__ list_empty (int *) ;
 int list_head (int *) ;

__attribute__((used)) static GUID get_default_script_guid(HTMLInnerWindow *window)
{

    return list_empty(&window->script_hosts)
        ? CLSID_JScript
        : LIST_ENTRY(list_head(&window->script_hosts), ScriptHost, entry)->guid;
}
