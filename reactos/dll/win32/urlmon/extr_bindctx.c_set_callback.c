
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * serv_prov; int * callback; } ;
typedef int IServiceProvider ;
typedef int IBindStatusCallback ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ BindStatusCallback ;


 int IBindStatusCallback_AddRef (int *) ;
 scalar_t__ IBindStatusCallback_QueryInterface (int *,int *,void**) ;
 int IBindStatusCallback_Release (int *) ;
 int IID_IServiceProvider ;
 int IServiceProvider_Release (int *) ;
 scalar_t__ S_OK ;

__attribute__((used)) static void set_callback(BindStatusCallback *This, IBindStatusCallback *bsc)
{
    IServiceProvider *serv_prov;
    HRESULT hres;

    if(This->callback)
        IBindStatusCallback_Release(This->callback);
    if(This->serv_prov)
        IServiceProvider_Release(This->serv_prov);

    IBindStatusCallback_AddRef(bsc);
    This->callback = bsc;

    hres = IBindStatusCallback_QueryInterface(bsc, &IID_IServiceProvider, (void**)&serv_prov);
    This->serv_prov = hres == S_OK ? serv_prov : ((void*)0);
}
