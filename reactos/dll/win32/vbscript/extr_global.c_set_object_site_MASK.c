#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IObjectWithSite ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IObjectWithSite ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC6(script_ctx_t *ctx, IUnknown *obj)
{
    IObjectWithSite *obj_site;
    IUnknown *ax_site;
    HRESULT hres;

    hres = FUNC3(obj, &IID_IObjectWithSite, (void**)&obj_site);
    if(FUNC0(hres))
        return S_OK;

    ax_site = FUNC5(ctx);
    if(ax_site) {
        hres = FUNC2(obj_site, ax_site);
        FUNC4(ax_site);
    }
    else
        hres = E_OUTOFMEMORY;
    FUNC1(obj_site);
    return hres;
}