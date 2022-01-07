
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsISupports ;
struct TYPE_8__ {TYPE_3__* doc_node; } ;
struct TYPE_11__ {TYPE_1__ basedoc; } ;
struct TYPE_9__ {int window; TYPE_5__* doc_obj; } ;
struct TYPE_10__ {TYPE_2__ basedoc; } ;
typedef TYPE_3__ HTMLDocumentNode ;


 int NS_OK ;
 int READYSTATE_INTERACTIVE ;
 int TRACE (char*,TYPE_3__*) ;
 int bind_event_scripts (TYPE_3__*) ;
 int parse_complete (TYPE_5__*) ;
 int set_ready_state (int ,int ) ;

__attribute__((used)) static nsresult run_end_load(HTMLDocumentNode *This, nsISupports *arg1, nsISupports *arg2)
{
    TRACE("(%p)\n", This);

    if(!This->basedoc.doc_obj)
        return NS_OK;

    if(This == This->basedoc.doc_obj->basedoc.doc_node) {




        parse_complete(This->basedoc.doc_obj);
    }

    bind_event_scripts(This);
    set_ready_state(This->basedoc.window, READYSTATE_INTERACTIVE);
    return NS_OK;
}
