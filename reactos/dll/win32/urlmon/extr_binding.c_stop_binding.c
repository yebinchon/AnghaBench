
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int state; int callback; int hres; TYPE_1__* protocol; } ;
struct TYPE_4__ {int IInternetProtocolEx_iface; } ;
typedef int LPCWSTR ;
typedef int HRESULT ;
typedef TYPE_2__ Binding ;


 int BINDING_LOCKED ;
 int BINDING_STOPPED ;
 int IBindStatusCallback_OnStopBinding (int ,int ,int ) ;
 int IInternetProtocolEx_UnlockRequest (int *) ;

__attribute__((used)) static void stop_binding(Binding *binding, HRESULT hres, LPCWSTR str)
{
    if(binding->state & BINDING_LOCKED) {
        IInternetProtocolEx_UnlockRequest(&binding->protocol->IInternetProtocolEx_iface);
        binding->state &= ~BINDING_LOCKED;
    }

    if(!(binding->state & BINDING_STOPPED)) {
        binding->state |= BINDING_STOPPED;

        binding->hres = hres;
        IBindStatusCallback_OnStopBinding(binding->callback, hres, str);
    }
}
