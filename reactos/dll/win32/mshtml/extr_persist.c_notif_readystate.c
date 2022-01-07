
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_17__ {TYPE_4__* inner_window; } ;
struct TYPE_21__ {TYPE_8__* frame_element; TYPE_5__ base; TYPE_2__* doc_obj; int readystate_pending; } ;
struct TYPE_18__ {int nsnode; TYPE_11__* doc; } ;
struct TYPE_19__ {TYPE_6__ node; } ;
struct TYPE_20__ {TYPE_7__ element; } ;
struct TYPE_16__ {TYPE_11__* doc; } ;
struct TYPE_15__ {int nsnode; } ;
struct TYPE_13__ {int cp_container; TYPE_9__* window; } ;
struct TYPE_14__ {TYPE_1__ basedoc; } ;
struct TYPE_12__ {TYPE_3__ node; } ;
typedef TYPE_9__ HTMLOuterWindow ;


 int DISPID_READYSTATE ;
 int EVENTID_READYSTATECHANGE ;
 int FALSE ;
 int TRUE ;
 int call_property_onchanged (int *,int ) ;
 int fire_event (TYPE_11__*,int ,int ,int ,int *,int *) ;

__attribute__((used)) static void notif_readystate(HTMLOuterWindow *window)
{
    window->readystate_pending = FALSE;

    if(window->doc_obj && window->doc_obj->basedoc.window == window)
        call_property_onchanged(&window->doc_obj->basedoc.cp_container, DISPID_READYSTATE);

    fire_event(window->base.inner_window->doc, EVENTID_READYSTATECHANGE, FALSE,
            window->base.inner_window->doc->node.nsnode, ((void*)0), ((void*)0));

    if(window->frame_element)
        fire_event(window->frame_element->element.node.doc, EVENTID_READYSTATECHANGE,
                   TRUE, window->frame_element->element.node.nsnode, ((void*)0), ((void*)0));
}
