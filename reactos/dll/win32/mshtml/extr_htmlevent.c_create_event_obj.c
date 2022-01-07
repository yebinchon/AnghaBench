
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IHTMLEventObj_iface; } ;
typedef int IHTMLEventObj ;
typedef TYPE_1__ HTMLEventObj ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 TYPE_1__* create_event () ;

HRESULT create_event_obj(IHTMLEventObj **ret)
{
    HTMLEventObj *event;

    event = create_event();
    if(!event)
        return E_OUTOFMEMORY;

    *ret = &event->IHTMLEventObj_iface;
    return S_OK;
}
