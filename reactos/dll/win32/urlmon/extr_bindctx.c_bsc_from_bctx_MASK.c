#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  IBindStatusCallbackEx_iface; int /*<<< orphan*/ * callback; } ;
typedef  int /*<<< orphan*/  IBindStatusCallback ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ BindStatusCallback ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IBindStatusCallbackHolder ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

IBindStatusCallback *FUNC6(IBindCtx *bctx)
{
    BindStatusCallback *holder;
    IBindStatusCallback *bsc;
    HRESULT hres;

    bsc = FUNC5(bctx);
    if(!bsc)
        return NULL;

    hres = FUNC3(bsc, &IID_IBindStatusCallbackHolder, (void**)&holder);
    if(FUNC0(hres))
        return bsc;

    if(holder->callback) {
        FUNC4(bsc);
        bsc = holder->callback;
        FUNC2(bsc);
    }

    FUNC1(&holder->IBindStatusCallbackEx_iface);
    return bsc;
}