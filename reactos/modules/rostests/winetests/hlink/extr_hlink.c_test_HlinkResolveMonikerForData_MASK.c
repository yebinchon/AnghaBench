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
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  BindStatusCallback ; 
 int /*<<< orphan*/  BindToStorage ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  GetDisplayName ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IsSystemMoniker ; 
 int /*<<< orphan*/  Moniker ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * _bctx ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void)
{
    IBindCtx *bctx;
    HRESULT hres;

    FUNC1(0, &bctx);
    _bctx = bctx;

    FUNC4(IsSystemMoniker);
    FUNC4(GetDisplayName);
    FUNC4(BindToStorage);

    hres = FUNC2(&Moniker, 0, bctx, 0, NULL, &BindStatusCallback, NULL);
    FUNC5(hres == S_OK, "HlinkResolveMonikerForData failed: %08x\n", hres);

    FUNC0(IsSystemMoniker);
    FUNC0(GetDisplayName);
    FUNC0(BindToStorage);

    FUNC3(bctx);
    _bctx = NULL;
}