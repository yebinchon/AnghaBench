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
typedef  int /*<<< orphan*/  bindopts ;
typedef  scalar_t__ ULONG ;
struct TYPE_3__ {int cbStruct; scalar_t__ grfFlags; int grfMode; int /*<<< orphan*/  dwTickCountDeadline; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IBindStatusCallback ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ BIND_OPTS ;

/* Variables and functions */
 scalar_t__ BIND_MAYBOTHERUSER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_NOINTERFACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAsyncBindCtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QueryInterface_IServiceProvider ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  bsc ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 

__attribute__((used)) static void FUNC9(void)
{
    IBindCtx *bctx = (IBindCtx*)0x0ff00ff0;
    IUnknown *unk;
    HRESULT hres;
    ULONG ref;
    BIND_OPTS bindopts;

    hres = FUNC1(0, NULL, NULL, &bctx);
    FUNC8(hres == E_INVALIDARG, "CreateAsyncBindCtx failed. expected: E_INVALIDARG, got: %08x\n", hres);
    FUNC8(bctx == (IBindCtx*)0x0ff00ff0, "bctx should not be changed\n");

    hres = FUNC1(0, NULL, NULL, NULL);
    FUNC8(hres == E_INVALIDARG, "CreateAsyncBindCtx failed. expected: E_INVALIDARG, got: %08x\n", hres);

    FUNC6(QueryInterface_IServiceProvider);
    hres = FUNC1(0, (IBindStatusCallback*)&bsc, NULL, &bctx);
    FUNC8(hres == S_OK, "CreateAsyncBindCtx failed: %08x\n", hres);
    FUNC0(QueryInterface_IServiceProvider);

    bindopts.cbStruct = sizeof(bindopts);
    hres = FUNC2(bctx, &bindopts);
    FUNC8(hres == S_OK, "IBindCtx_GetBindOptions failed: %08x\n", hres);
    FUNC8(bindopts.grfFlags == BIND_MAYBOTHERUSER,
                "bindopts.grfFlags = %08x, expected: BIND_MAYBOTHERUSER\n", bindopts.grfFlags);
    FUNC8(bindopts.grfMode == (STGM_READWRITE | STGM_SHARE_EXCLUSIVE),
                "bindopts.grfMode = %08x, expected: STGM_READWRITE | STGM_SHARE_EXCLUSIVE\n",
                bindopts.grfMode);
    FUNC8(bindopts.dwTickCountDeadline == 0,
                "bindopts.dwTickCountDeadline = %08x, expected: 0\n", bindopts.dwTickCountDeadline);

    hres = FUNC3(bctx, &IID_IAsyncBindCtx, (void**)&unk);
    FUNC8(hres == E_NOINTERFACE, "QueryInterface(IID_IAsyncBindCtx) failed: %08x, expected E_NOINTERFACE\n", hres);
    if(FUNC7(hres))
        FUNC5(unk);

    ref = FUNC4(bctx);
    FUNC8(ref == 0, "bctx should be destroyed here\n");
}