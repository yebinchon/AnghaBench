
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_11__ {int ref; int * mon; int entry; int bom; int bindf; int const* vtbl; TYPE_3__ IInternetBindInfo_iface; TYPE_2__ IHttpNegotiate2_iface; TYPE_1__ IServiceProvider_iface; TYPE_4__ IBindStatusCallback_iface; } ;
typedef int IMoniker ;
typedef int DWORD ;
typedef int BSCallbackVtbl ;
typedef TYPE_5__ BSCallback ;


 int BOM_NONE ;
 int BindStatusCallbackVtbl ;
 int HttpNegotiate2Vtbl ;
 int IMoniker_AddRef (int *) ;
 int InternetBindInfoVtbl ;
 int ServiceProviderVtbl ;
 int list_init (int *) ;

void init_bscallback(BSCallback *This, const BSCallbackVtbl *vtbl, IMoniker *mon, DWORD bindf)
{
    This->IBindStatusCallback_iface.lpVtbl = &BindStatusCallbackVtbl;
    This->IServiceProvider_iface.lpVtbl = &ServiceProviderVtbl;
    This->IHttpNegotiate2_iface.lpVtbl = &HttpNegotiate2Vtbl;
    This->IInternetBindInfo_iface.lpVtbl = &InternetBindInfoVtbl;
    This->vtbl = vtbl;
    This->ref = 1;
    This->bindf = bindf;
    This->bom = BOM_NONE;

    list_init(&This->entry);

    if(mon)
        IMoniker_AddRef(mon);
    This->mon = mon;
}
