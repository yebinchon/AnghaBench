
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_9__ {int ref; int * callback; int file_name; TYPE_2__ IServiceProvider_iface; TYPE_1__ IBindStatusCallback_iface; } ;
typedef scalar_t__ LPCWSTR ;
typedef int IBindStatusCallback ;
typedef int HRESULT ;
typedef TYPE_3__ DownloadBSC ;


 int BindStatusCallbackVtbl ;
 int E_OUTOFMEMORY ;
 int IBindStatusCallback_AddRef (int *) ;
 int S_OK ;
 int ServiceProviderVtbl ;
 TYPE_3__* heap_alloc_zero (int) ;
 int heap_free (TYPE_3__*) ;
 int heap_strdupW (scalar_t__) ;

__attribute__((used)) static HRESULT DownloadBSC_Create(IBindStatusCallback *callback, LPCWSTR file_name, DownloadBSC **ret_callback)
{
    DownloadBSC *ret;

    ret = heap_alloc_zero(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IBindStatusCallback_iface.lpVtbl = &BindStatusCallbackVtbl;
    ret->IServiceProvider_iface.lpVtbl = &ServiceProviderVtbl;
    ret->ref = 1;

    if(file_name) {
        ret->file_name = heap_strdupW(file_name);
        if(!ret->file_name) {
            heap_free(ret);
            return E_OUTOFMEMORY;
        }
    }

    if(callback)
        IBindStatusCallback_AddRef(callback);
    ret->callback = callback;

    *ret_callback = ret;
    return S_OK;
}
