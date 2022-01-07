
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMKeyEvent ;
typedef int nsIDOMEvent ;
typedef int UINT32 ;
struct TYPE_4__ {int nsnode; int doc; } ;
struct TYPE_5__ {TYPE_1__ node; } ;
typedef TYPE_2__ HTMLElement ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 int EVENTID_HELP ;

 int IID_nsIDOMKeyEvent ;
 int NS_SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int TRUE ;

 int fire_event (int ,int ,int ,int ,int *,int *) ;
 TYPE_2__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMEvent_QueryInterface (int *,int *,void**) ;
 int nsIDOMKeyEvent_GetKeyCode (int *,int *) ;
 int nsIDOMKeyEvent_Release (int *) ;

HRESULT HTMLElement_handle_event(HTMLDOMNode *iface, DWORD eid, nsIDOMEvent *event, BOOL *prevent_default)
{
    HTMLElement *This = impl_from_HTMLDOMNode(iface);

    switch(eid) {
    case 129: {
        nsIDOMKeyEvent *key_event;
        nsresult nsres;

        nsres = nsIDOMEvent_QueryInterface(event, &IID_nsIDOMKeyEvent, (void**)&key_event);
        if(NS_SUCCEEDED(nsres)) {
            UINT32 code = 0;

            nsIDOMKeyEvent_GetKeyCode(key_event, &code);

            switch(code) {
            case 128:
                TRACE("F1 pressed\n");
                fire_event(This->node.doc, EVENTID_HELP, TRUE, This->node.nsnode, ((void*)0), ((void*)0));
                *prevent_default = TRUE;
            }

            nsIDOMKeyEvent_Release(key_event);
        }
    }
    }

    return S_OK;
}
