
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ serv_prov; int callback; } ;
typedef int REFIID ;
typedef int HRESULT ;
typedef TYPE_1__ BindStatusCallback ;


 scalar_t__ FAILED (int ) ;
 int IBindStatusCallback_QueryInterface (int ,int ,void**) ;
 int IServiceProvider_QueryService (scalar_t__,int ,int ,void**) ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static void *get_callback_iface(BindStatusCallback *This, REFIID riid)
{
    void *ret;
    HRESULT hres;

    hres = IBindStatusCallback_QueryInterface(This->callback, riid, (void**)&ret);
    if(FAILED(hres) && This->serv_prov)
        hres = IServiceProvider_QueryService(This->serv_prov, riid, riid, &ret);

    return SUCCEEDED(hres) ? ret : ((void*)0);
}
