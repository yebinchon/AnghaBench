#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nscontext {int /*<<< orphan*/  entry; } ;
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_2__ IMXNamespaceManager_iface; int /*<<< orphan*/  override; int /*<<< orphan*/  ctxts; TYPE_1__ IVBMXNamespaceManager_iface; int /*<<< orphan*/  dispex; } ;
typedef  TYPE_3__ namespacemanager ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  MXNamespaceManagerVtbl ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 int /*<<< orphan*/  VBMXNamespaceManagerVtbl ; 
 struct nscontext* FUNC1 () ; 
 TYPE_3__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  namespacemanager_dispex ; 

HRESULT FUNC7(void **obj)
{
    namespacemanager *This;
    struct nscontext *ctxt;

    FUNC0("(%p)\n", obj);

    This = FUNC2( sizeof (*This) );
    if( !This )
        return E_OUTOFMEMORY;

    This->IMXNamespaceManager_iface.lpVtbl = &MXNamespaceManagerVtbl;
    This->IVBMXNamespaceManager_iface.lpVtbl = &VBMXNamespaceManagerVtbl;
    This->ref = 1;
    FUNC4(&This->dispex, (IUnknown*)&This->IVBMXNamespaceManager_iface, &namespacemanager_dispex);

    FUNC6(&This->ctxts);
    ctxt = FUNC1();
    if (!ctxt)
    {
        FUNC3(This);
        return E_OUTOFMEMORY;
    }

    FUNC5(&This->ctxts, &ctxt->entry);

    This->override = VARIANT_TRUE;

    *obj = &This->IMXNamespaceManager_iface;

    FUNC0("returning iface %p\n", *obj);

    return S_OK;
}