
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ nsresult ;
typedef int nsIDOMEventTarget ;
typedef int nsAString ;
typedef char WCHAR ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_2__ nsIDOMEventListener_iface; TYPE_1__* xhr; } ;
struct TYPE_6__ {TYPE_4__* event_listener; int nsxhr; } ;
typedef TYPE_1__ HTMLXMLHttpRequest ;
typedef int DispatchEx ;


 int ERR (char*,scalar_t__) ;
 int EVENTID_READYSTATECHANGE ;
 int FALSE ;
 int IID_nsIDOMEventTarget ;
 scalar_t__ NS_FAILED (scalar_t__) ;
 scalar_t__ NS_OK ;
 int TRACE (char*,TYPE_1__*) ;
 int TRUE ;
 int XMLHttpReqEventListenerVtbl ;
 int assert (int) ;
 TYPE_4__* heap_alloc (int) ;
 TYPE_1__* impl_from_DispatchEx (int *) ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,char const*) ;
 scalar_t__ nsIDOMEventTarget_AddEventListener (int *,int *,TYPE_2__*,int ,int ,int) ;
 int nsIDOMEventTarget_Release (int *) ;
 scalar_t__ nsIXMLHttpRequest_QueryInterface (int ,int *,void**) ;

__attribute__((used)) static void HTMLXMLHttpRequest_bind_event(DispatchEx *dispex, int eid)
{
    HTMLXMLHttpRequest *This = impl_from_DispatchEx(dispex);
    nsIDOMEventTarget *nstarget;
    nsAString type_str;
    nsresult nsres;

    static const WCHAR readystatechangeW[] = {'r','e','a','d','y','s','t','a','t','e','c','h','a','n','g','e',0};

    TRACE("(%p)\n", This);

    assert(eid == EVENTID_READYSTATECHANGE);

    if(This->event_listener)
        return;

    This->event_listener = heap_alloc(sizeof(*This->event_listener));
    if(!This->event_listener)
        return;

    This->event_listener->nsIDOMEventListener_iface.lpVtbl = &XMLHttpReqEventListenerVtbl;
    This->event_listener->ref = 1;
    This->event_listener->xhr = This;

    nsres = nsIXMLHttpRequest_QueryInterface(This->nsxhr, &IID_nsIDOMEventTarget, (void**)&nstarget);
    assert(nsres == NS_OK);

    nsAString_InitDepend(&type_str, readystatechangeW);
    nsres = nsIDOMEventTarget_AddEventListener(nstarget, &type_str, &This->event_listener->nsIDOMEventListener_iface, FALSE, TRUE, 2);
    nsAString_Finish(&type_str);
    nsIDOMEventTarget_Release(nstarget);
    if(NS_FAILED(nsres))
        ERR("AddEventListener failed: %08x\n", nsres);
}
