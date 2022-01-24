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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IStream ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ INET_E_DATA_NOT_AVAILABLE ; 
 scalar_t__ MK_E_SYNTAX ; 
 int /*<<< orphan*/  S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  about_blankW ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    IMoniker *mon = NULL;
    IBindCtx *bctx = NULL;
    IUnknown *unk;
    HRESULT hres;

    hres = FUNC0(NULL, about_blankW, &mon);
    FUNC5(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);
    if(FUNC1(hres))
        return;

    hres = FUNC6(NULL, 0, NULL, NULL, &bctx, 0);
    FUNC5(hres == S_OK, "CreateAsyncBindCtxEx failed: %08x\n", hres);

    unk = (void*)0xdeadbeef;
    hres = FUNC3(mon, bctx, NULL, &IID_IStream, (void**)&unk);
    FUNC5(hres == MK_E_SYNTAX || hres == INET_E_DATA_NOT_AVAILABLE,
       "hres=%08x, expected MK_E_SYNTAX or INET_E_DATA_NOT_AVAILABLE\n", hres);
    FUNC5(unk == NULL, "got %p\n", unk);

    FUNC2(bctx);

    FUNC4(mon);

    FUNC7(E_NOTIMPL);
    FUNC7(S_FALSE);
}