
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int eventid_t ;
struct TYPE_6__ {int nsnode; int doc; TYPE_1__* vtbl; } ;
struct TYPE_5__ {int (* fire_event ) (TYPE_2__*,int ,scalar_t__*) ;} ;
typedef TYPE_2__ HTMLDOMNode ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int S_OK ;
 int TRUE ;
 int fire_event (int ,int ,int ,int ,int *,int *) ;
 int stub1 (TYPE_2__*,int ,scalar_t__*) ;

HRESULT call_fire_event(HTMLDOMNode *node, eventid_t eid)
{
    HRESULT hres;

    if(node->vtbl->fire_event) {
        BOOL handled = FALSE;

        hres = node->vtbl->fire_event(node, eid, &handled);
        if(handled)
            return hres;
    }

    fire_event(node->doc, eid, TRUE, node->nsnode, ((void*)0), ((void*)0));
    return S_OK;
}
