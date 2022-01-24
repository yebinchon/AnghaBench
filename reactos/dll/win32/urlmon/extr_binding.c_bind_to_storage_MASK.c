#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* vtbl; } ;
struct TYPE_10__ {scalar_t__ hres; scalar_t__ download_state; int state; int bindf; int /*<<< orphan*/  IBinding_iface; TYPE_4__* stgmed_obj; TYPE_1__* protocol; } ;
struct TYPE_9__ {scalar_t__ (* get_result ) (TYPE_4__*,int,void**) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  IInternetProtocolEx_iface; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_3__ Binding ;

/* Variables and functions */
 scalar_t__ BEFORE_DOWNLOAD ; 
 int BINDF_ASYNCHRONOUS ; 
 int BINDING_LOCKED ; 
 int BINDING_STOPPED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ MK_S_ASYNCHRONOUS ; 
 scalar_t__ S_OK ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int,void**) ; 

HRESULT FUNC6(IUri *uri, IBindCtx *pbc, REFIID riid, void **ppv)
{
    Binding *binding = NULL, *binding_ctx;
    HRESULT hres;

    binding_ctx = FUNC3(pbc);

    hres = FUNC4(NULL, binding_ctx, uri, pbc, FALSE, riid, &binding);
    if(binding_ctx)
        FUNC1(&binding_ctx->IBinding_iface);
    if(FUNC0(hres))
        return hres;

    if(binding->hres == S_OK && binding->download_state != BEFORE_DOWNLOAD /* FIXME */) {
        if((binding->state & BINDING_STOPPED) && (binding->state & BINDING_LOCKED))
            FUNC2(&binding->protocol->IInternetProtocolEx_iface);

        hres = binding->stgmed_obj->vtbl->get_result(binding->stgmed_obj, binding->bindf, ppv);
    }else if(binding->bindf & BINDF_ASYNCHRONOUS) {
        hres = MK_S_ASYNCHRONOUS;
    }else {
        hres = FUNC0(binding->hres) ? binding->hres : S_OK;
    }

    FUNC1(&binding->IBinding_iface);

    return hres;
}