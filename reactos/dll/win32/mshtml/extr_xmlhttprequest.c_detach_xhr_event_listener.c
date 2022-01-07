
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ nsresult ;
typedef int nsIDOMEventTarget ;
typedef int nsAString ;
struct TYPE_5__ {int nsIDOMEventListener_iface; TYPE_1__* xhr; } ;
typedef TYPE_2__ XMLHttpReqEventListener ;
typedef char WCHAR ;
struct TYPE_4__ {int * event_listener; int nsxhr; } ;


 int FALSE ;
 int IID_nsIDOMEventTarget ;
 scalar_t__ NS_OK ;
 int assert (int) ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,char const*) ;
 int nsIDOMEventListener_Release (int *) ;
 int nsIDOMEventTarget_Release (int *) ;
 scalar_t__ nsIDOMEventTarget_RemoveEventListener (int *,int *,int *,int ) ;
 scalar_t__ nsIXMLHttpRequest_QueryInterface (int ,int *,void**) ;

__attribute__((used)) static void detach_xhr_event_listener(XMLHttpReqEventListener *event_listener)
{
    nsIDOMEventTarget *event_target;
    nsAString str;
    nsresult nsres;

    static const WCHAR readystatechangeW[] =
        {'o','n','r','e','a','d','y','s','t','a','t','e','c','h','a','n','g','e',0};

    nsres = nsIXMLHttpRequest_QueryInterface(event_listener->xhr->nsxhr, &IID_nsIDOMEventTarget, (void**)&event_target);
    assert(nsres == NS_OK);

    nsAString_InitDepend(&str, readystatechangeW);
    nsres = nsIDOMEventTarget_RemoveEventListener(event_target, &str, &event_listener->nsIDOMEventListener_iface, FALSE);
    nsAString_Finish(&str);
    nsIDOMEventTarget_Release(event_target);

    event_listener->xhr->event_listener = ((void*)0);
    event_listener->xhr = ((void*)0);
    nsIDOMEventListener_Release(&event_listener->nsIDOMEventListener_iface);
}
