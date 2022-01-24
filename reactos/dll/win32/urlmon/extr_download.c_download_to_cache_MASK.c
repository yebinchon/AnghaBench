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
typedef  int /*<<< orphan*/  stop_cache_binding_proc_t ;
struct TYPE_3__ {int /*<<< orphan*/  IBindStatusCallback_iface; int /*<<< orphan*/  bindf; void* ctx; int /*<<< orphan*/  onstop_proc; } ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IBindStatusCallback ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DownloadBSC ;

/* Variables and functions */
 int /*<<< orphan*/  BINDF_ASYNCHRONOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

HRESULT FUNC10(IUri *uri, stop_cache_binding_proc_t proc, void *ctx, IBindStatusCallback *callback)
{
    DownloadBSC *dwl_bsc;
    IBindCtx *bindctx;
    IMoniker *mon;
    IUnknown *unk;
    HRESULT hres;

    hres = FUNC2(callback, NULL, &dwl_bsc);
    if(FUNC3(hres))
        return hres;

    dwl_bsc->onstop_proc = proc;
    dwl_bsc->ctx = ctx;
    dwl_bsc->bindf = BINDF_ASYNCHRONOUS;

    hres = FUNC0(0, &dwl_bsc->IBindStatusCallback_iface, NULL, &bindctx);
    FUNC5(&dwl_bsc->IBindStatusCallback_iface);
    if(FUNC3(hres))
        return hres;

    hres = FUNC1(NULL, uri, &mon, 0);
    if(FUNC3(hres)) {
        FUNC4(bindctx);
        return hres;
    }

    hres = FUNC6(mon, bindctx, NULL, &IID_IUnknown, (void**)&unk);
    FUNC7(mon);
    FUNC4(bindctx);
    if(FUNC9(hres) && unk)
        FUNC8(unk);
    return hres;

}