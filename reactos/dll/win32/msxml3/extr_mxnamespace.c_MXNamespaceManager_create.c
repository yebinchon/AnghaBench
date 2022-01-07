
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nscontext {int entry; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_2__ IMXNamespaceManager_iface; int override; int ctxts; TYPE_1__ IVBMXNamespaceManager_iface; int dispex; } ;
typedef TYPE_3__ namespacemanager ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int MXNamespaceManagerVtbl ;
 int S_OK ;
 int TRACE (char*,void*) ;
 int VARIANT_TRUE ;
 int VBMXNamespaceManagerVtbl ;
 struct nscontext* alloc_ns_context () ;
 TYPE_3__* heap_alloc (int) ;
 int heap_free (TYPE_3__*) ;
 int init_dispex (int *,int *,int *) ;
 int list_add_head (int *,int *) ;
 int list_init (int *) ;
 int namespacemanager_dispex ;

HRESULT MXNamespaceManager_create(void **obj)
{
    namespacemanager *This;
    struct nscontext *ctxt;

    TRACE("(%p)\n", obj);

    This = heap_alloc( sizeof (*This) );
    if( !This )
        return E_OUTOFMEMORY;

    This->IMXNamespaceManager_iface.lpVtbl = &MXNamespaceManagerVtbl;
    This->IVBMXNamespaceManager_iface.lpVtbl = &VBMXNamespaceManagerVtbl;
    This->ref = 1;
    init_dispex(&This->dispex, (IUnknown*)&This->IVBMXNamespaceManager_iface, &namespacemanager_dispex);

    list_init(&This->ctxts);
    ctxt = alloc_ns_context();
    if (!ctxt)
    {
        heap_free(This);
        return E_OUTOFMEMORY;
    }

    list_add_head(&This->ctxts, &ctxt->entry);

    This->override = VARIANT_TRUE;

    *obj = &This->IMXNamespaceManager_iface;

    TRACE("returning iface %p\n", *obj);

    return S_OK;
}
