
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ptr; } ;
struct TYPE_7__ {TYPE_2__ event_target; TYPE_1__* doc; scalar_t__ nsnode; } ;
struct TYPE_5__ {int basedoc; TYPE_3__ node; } ;
typedef TYPE_3__ HTMLDOMNode ;


 int htmldoc_release (int *) ;
 int nsIDOMNode_Release (scalar_t__) ;
 int release_event_target (scalar_t__) ;

void HTMLDOMNode_destructor(HTMLDOMNode *This)
{
    if(This->nsnode)
        nsIDOMNode_Release(This->nsnode);
    if(This->doc && &This->doc->node != This)
        htmldoc_release(&This->doc->basedoc);
    if(This->event_target.ptr)
        release_event_target(This->event_target.ptr);
}
