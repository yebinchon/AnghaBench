#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_4__ IBindStatusCallback_iface; TYPE_1__ IWindowForBindingUI_iface; } ;
typedef  TYPE_2__ InstallCallback ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  InstallCallbackVtbl ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WindowForBindingUIVtbl ; 
 TYPE_2__* FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(const WCHAR *url)
{
    InstallCallback *callback;
    IBindCtx *bctx;
    HRESULT hres;

    callback = FUNC6(sizeof(*callback));
    if(!callback)
        return;

    callback->IBindStatusCallback_iface.lpVtbl = &InstallCallbackVtbl;
    callback->IWindowForBindingUI_iface.lpVtbl = &WindowForBindingUIVtbl;
    callback->ref = 1;

    hres = FUNC1(0, &callback->IBindStatusCallback_iface, NULL, &bctx);
    FUNC4(&callback->IBindStatusCallback_iface);
    if(FUNC2(hres))
        return;

    hres = FUNC0(NULL, NULL, NULL, 0, 0, url, bctx, NULL, 0);
    FUNC3(bctx);
    if(FUNC2(hres))
        FUNC5("FAILED: %08x\n", hres);
}