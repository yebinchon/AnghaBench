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
struct TYPE_3__ {int /*<<< orphan*/ * lpVtbl; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_1__ IBinding ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  Binding ;

/* Variables and functions */
 int /*<<< orphan*/  BindingVtbl ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IBinding ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cbinding_contextW ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static Binding *FUNC5(IBindCtx *bctx)
{
    IBinding *binding;
    IUnknown *unk;
    HRESULT hres;

    hres = FUNC1(bctx, cbinding_contextW, &unk);
    if(FUNC0(hres))
        return NULL;

    hres = FUNC2(unk, &IID_IBinding, (void**)&binding);
    FUNC3(unk);
    if(FUNC0(hres))
        return NULL;

    if (binding->lpVtbl != &BindingVtbl)
        return NULL;
    return FUNC4(binding);
}