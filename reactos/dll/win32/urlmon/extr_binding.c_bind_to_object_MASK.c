#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ hres; int bindf; int /*<<< orphan*/  IBinding_iface; void* obj; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ Binding ;

/* Variables and functions */
 int BINDF_ASYNCHRONOUS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ MK_S_ASYNCHRONOUS ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 

HRESULT FUNC5(IMoniker *mon, IUri *uri, IBindCtx *pbc, REFIID riid, void **ppv)
{
    Binding *binding;
    HRESULT hres;

    *ppv = NULL;

    hres = FUNC4(mon, NULL, uri, pbc, TRUE, riid, &binding);
    if(FUNC0(hres))
        return hres;

    if(binding->hres != S_OK) {
        hres = FUNC3(binding->hres) ? S_OK : binding->hres;
    }else if(binding->bindf & BINDF_ASYNCHRONOUS) {
        hres = MK_S_ASYNCHRONOUS;
    }else {
        *ppv = binding->obj;
        FUNC2(binding->obj);
        hres = S_OK;
    }

    FUNC1(&binding->IBinding_iface);

    return hres;
}