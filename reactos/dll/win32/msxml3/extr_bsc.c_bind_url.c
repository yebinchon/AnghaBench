
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_4__ IBindStatusCallback_iface; int hres; int * memstream; int * binding; int (* onDataAvailable ) (void*,char*,DWORD) ;void* obj; } ;
typedef TYPE_1__ bsc_t ;
typedef int LPVOID ;
typedef int IStream ;
typedef int IMoniker ;
typedef int IBindCtx ;
typedef int HRESULT ;


 int CreateBindCtx (int ,int **) ;
 scalar_t__ FAILED (int ) ;
 int IBindCtx_Release (int *) ;
 int IBindStatusCallback_Release (TYPE_4__*) ;
 int IID_IStream ;
 int IMoniker_BindToStorage (int *,int *,int *,int *,int *) ;
 int IStream_Release (int *) ;
 int RegisterBindStatusCallback (int *,TYPE_4__*,int *,int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*,int *) ;
 int bsc_vtbl ;
 TYPE_1__* heap_alloc (int) ;

HRESULT bind_url(IMoniker *mon, HRESULT (*onDataAvailable)(void*,char*,DWORD),
        void *obj, bsc_t **ret)
{
    bsc_t *bsc;
    IBindCtx *pbc;
    HRESULT hr;

    TRACE("%p\n", mon);

    hr = CreateBindCtx(0, &pbc);
    if(FAILED(hr))
        return hr;

    bsc = heap_alloc(sizeof(bsc_t));

    bsc->IBindStatusCallback_iface.lpVtbl = &bsc_vtbl;
    bsc->ref = 1;
    bsc->obj = obj;
    bsc->onDataAvailable = onDataAvailable;
    bsc->binding = ((void*)0);
    bsc->memstream = ((void*)0);
    bsc->hres = S_OK;

    hr = RegisterBindStatusCallback(pbc, &bsc->IBindStatusCallback_iface, ((void*)0), 0);
    if(SUCCEEDED(hr))
    {
        IStream *stream;
        hr = IMoniker_BindToStorage(mon, pbc, ((void*)0), &IID_IStream, (LPVOID*)&stream);
        if(stream)
            IStream_Release(stream);
        IBindCtx_Release(pbc);
    }

    if(FAILED(hr))
    {
        IBindStatusCallback_Release(&bsc->IBindStatusCallback_iface);
        bsc = ((void*)0);
    }

    *ret = bsc;
    return hr;
}
