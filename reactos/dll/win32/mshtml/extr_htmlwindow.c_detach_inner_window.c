
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_19__ {int IHTMLWindow2_iface; TYPE_7__* outer_window; } ;
struct TYPE_21__ {TYPE_6__ base; int task_magic; TYPE_11__* doc; } ;
struct TYPE_18__ {TYPE_8__* inner_window; } ;
struct TYPE_20__ {TYPE_5__ base; TYPE_2__* doc_obj; } ;
struct TYPE_16__ {int * forward_container; } ;
struct TYPE_17__ {TYPE_3__ cp_container; } ;
struct TYPE_14__ {TYPE_7__* window; } ;
struct TYPE_15__ {TYPE_1__ basedoc; } ;
struct TYPE_13__ {int plugin_hosts; TYPE_4__ basedoc; } ;
typedef TYPE_7__ HTMLOuterWindow ;
typedef TYPE_8__ HTMLInnerWindow ;


 int IHTMLWindow2_Release (int *) ;
 int LIST_ENTRY (int ,int ,int ) ;
 int PluginHost ;
 int abort_window_bindings (TYPE_8__*) ;
 int detach_events (TYPE_11__*) ;
 int detach_plugin_host (int ) ;
 int entry ;
 int list_empty (int *) ;
 int list_head (int *) ;
 int release_script_hosts (TYPE_8__*) ;
 int remove_target_tasks (int ) ;

__attribute__((used)) static void detach_inner_window(HTMLInnerWindow *window)
{
    HTMLOuterWindow *outer_window = window->base.outer_window;

    if(outer_window && outer_window->doc_obj && outer_window == outer_window->doc_obj->basedoc.window)
        window->doc->basedoc.cp_container.forward_container = ((void*)0);

    if(window->doc) {
        detach_events(window->doc);
        while(!list_empty(&window->doc->plugin_hosts))
            detach_plugin_host(LIST_ENTRY(list_head(&window->doc->plugin_hosts), PluginHost, entry));
    }

    abort_window_bindings(window);
    remove_target_tasks(window->task_magic);
    release_script_hosts(window);
    window->base.outer_window = ((void*)0);

    if(outer_window && outer_window->base.inner_window == window) {
        outer_window->base.inner_window = ((void*)0);
        IHTMLWindow2_Release(&window->base.IHTMLWindow2_iface);
    }
}
