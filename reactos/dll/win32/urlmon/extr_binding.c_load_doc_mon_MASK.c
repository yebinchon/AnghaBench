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
struct TYPE_3__ {scalar_t__ download_state; int /*<<< orphan*/  mon; int /*<<< orphan*/  IBinding_iface; int /*<<< orphan*/  bctx; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IPersistMoniker ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ Binding ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ END_DOWNLOAD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bscb_holderW ; 
 int /*<<< orphan*/  cbinding_contextW ; 

__attribute__((used)) static void FUNC8(Binding *binding, IPersistMoniker *persist)
{
    IBindCtx *bctx;
    HRESULT hres;

    hres = FUNC0(binding->bctx, 0, NULL, NULL, &bctx, 0);
    if(FUNC1(hres)) {
        FUNC7("CreateAsyncBindCtxEx failed: %08x\n", hres);
        return;
    }

    FUNC5(bctx, bscb_holderW);
    FUNC3(bctx, cbinding_contextW, (IUnknown*)&binding->IBinding_iface);

    hres = FUNC6(persist, binding->download_state == END_DOWNLOAD, binding->mon, bctx, 0x12);
    FUNC5(bctx, cbinding_contextW);
    FUNC4(bctx);
    if(FUNC1(hres))
        FUNC2("Load failed: %08x\n", hres);
}