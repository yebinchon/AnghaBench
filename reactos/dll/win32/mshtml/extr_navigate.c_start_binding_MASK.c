#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * window; int /*<<< orphan*/  mon; int /*<<< orphan*/  IBindStatusCallback_iface; } ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HTMLInnerWindow ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ BSCallback ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IStream ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

HRESULT FUNC10(HTMLInnerWindow *inner_window, BSCallback *bscallback, IBindCtx *bctx)
{
    IStream *str = NULL;
    HRESULT hres;

    FUNC8("(%p %p %p)\n", inner_window, bscallback, bctx);

    bscallback->window = inner_window;

    /* NOTE: IE7 calls IsSystemMoniker here*/

    if(bctx) {
        hres = FUNC6(bctx, &bscallback->IBindStatusCallback_iface, NULL, 0);
        if(FUNC7(hres))
            FUNC2(bctx);
    }else {
        hres = FUNC0(0, &bscallback->IBindStatusCallback_iface, NULL, &bctx);
    }

    if(FUNC1(hres)) {
        bscallback->window = NULL;
        return hres;
    }

    hres = FUNC4(bscallback->mon, bctx, NULL, &IID_IStream, (void**)&str);
    FUNC3(bctx);
    if(FUNC1(hres)) {
        FUNC9("BindToStorage failed: %08x\n", hres);
        bscallback->window = NULL;
        return hres;
    }

    if(str)
        FUNC5(str);

    return S_OK;
}