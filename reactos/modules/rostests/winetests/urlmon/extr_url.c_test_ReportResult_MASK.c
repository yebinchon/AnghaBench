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
typedef  int /*<<< orphan*/  IBindStatusCallback ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ABOUT_TEST ; 
 int /*<<< orphan*/  BINDTEST_EMULATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  GetBindInfo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IStream ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ MK_S_ASYNCHRONOUS ; 
 int /*<<< orphan*/  OnStartBinding ; 
 int /*<<< orphan*/  QueryInterface_IBindStatusCallbackEx ; 
 int /*<<< orphan*/  QueryInterface_IInternetProtocol ; 
 int /*<<< orphan*/  QueryInterface_IServiceProvider ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  SetPriority ; 
 int /*<<< orphan*/  Start ; 
 int /*<<< orphan*/  TYMED_ISTREAM ; 
 int /*<<< orphan*/  about_blankW ; 
 scalar_t__ binding_hres ; 
 int /*<<< orphan*/  bsc ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  test_protocol ; 

__attribute__((used)) static void FUNC12(HRESULT exhres)
{
    IMoniker *mon = NULL;
    IBindCtx *bctx = NULL;
    IUnknown *unk = (void*)0xdeadbeef;
    HRESULT hres;

    FUNC9(ABOUT_TEST, BINDTEST_EMULATE, TYMED_ISTREAM);
    binding_hres = exhres;

    hres = FUNC3(NULL, about_blankW, &mon);
    FUNC11(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);

    FUNC7(QueryInterface_IServiceProvider);
    hres = FUNC2(0, (IBindStatusCallback*)&bsc, NULL, &bctx);
    FUNC11(hres == S_OK, "CreateAsyncBindCtx failed: %08x\n\n", hres);
    FUNC0(QueryInterface_IServiceProvider);

    FUNC7(QueryInterface_IBindStatusCallbackEx);
    FUNC7(GetBindInfo);
    FUNC7(QueryInterface_IInternetProtocol);
    FUNC7(OnStartBinding);
    if(FUNC10(test_protocol))
        FUNC7(SetPriority);
    FUNC7(Start);

    hres = FUNC5(mon, bctx, NULL, &IID_IStream, (void**)&unk);
    if(FUNC8(exhres))
        FUNC11(hres == S_OK || hres == MK_S_ASYNCHRONOUS, "BindToStorage failed: %08x\n", hres);
    else
        FUNC11(hres == exhres || hres == MK_S_ASYNCHRONOUS,
           "BindToStorage failed: %08x, expected %08x or MK_S_ASYNCHRONOUS\n", hres, exhres);

    FUNC1(QueryInterface_IBindStatusCallbackEx); /* IE 8 */
    FUNC0(GetBindInfo);
    FUNC0(QueryInterface_IInternetProtocol);
    FUNC0(OnStartBinding);
    if(FUNC10(test_protocol))
        FUNC1(SetPriority); /* Not called by IE11 */
    FUNC0(Start);

    FUNC11(unk == NULL, "unk=%p\n", unk);

    FUNC4(bctx);
    FUNC6(mon);
}