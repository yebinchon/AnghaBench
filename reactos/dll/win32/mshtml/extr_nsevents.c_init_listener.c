
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsIDOMEventListenerVtbl ;
struct TYPE_4__ {int const* lpVtbl; } ;
struct TYPE_5__ {int * This; TYPE_1__ nsIDOMEventListener_iface; } ;
typedef TYPE_2__ nsEventListener ;
typedef int nsDocumentEventListener ;



__attribute__((used)) static void init_listener(nsEventListener *This, nsDocumentEventListener *listener,
        const nsIDOMEventListenerVtbl *vtbl)
{
    This->nsIDOMEventListener_iface.lpVtbl = vtbl;
    This->This = listener;
}
