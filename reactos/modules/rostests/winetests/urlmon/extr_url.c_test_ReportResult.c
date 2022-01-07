
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IMoniker ;
typedef int IBindStatusCallback ;
typedef int IBindCtx ;
typedef scalar_t__ HRESULT ;


 int ABOUT_TEST ;
 int BINDTEST_EMULATE ;
 int CHECK_CALLED (int ) ;
 int CLEAR_CALLED (int ) ;
 scalar_t__ CreateAsyncBindCtx (int ,int *,int *,int **) ;
 scalar_t__ CreateURLMoniker (int *,int ,int **) ;
 int GetBindInfo ;
 int IBindCtx_Release (int *) ;
 int IID_IStream ;
 scalar_t__ IMoniker_BindToStorage (int *,int *,int *,int *,void**) ;
 int IMoniker_Release (int *) ;
 scalar_t__ MK_S_ASYNCHRONOUS ;
 int OnStartBinding ;
 int QueryInterface_IBindStatusCallbackEx ;
 int QueryInterface_IInternetProtocol ;
 int QueryInterface_IServiceProvider ;
 int SET_EXPECT (int ) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int SetPriority ;
 int Start ;
 int TYMED_ISTREAM ;
 int about_blankW ;
 scalar_t__ binding_hres ;
 int bsc ;
 int init_bind_test (int ,int ,int ) ;
 scalar_t__ is_urlmon_protocol (int ) ;
 int ok (int,char*,scalar_t__,...) ;
 int test_protocol ;

__attribute__((used)) static void test_ReportResult(HRESULT exhres)
{
    IMoniker *mon = ((void*)0);
    IBindCtx *bctx = ((void*)0);
    IUnknown *unk = (void*)0xdeadbeef;
    HRESULT hres;

    init_bind_test(ABOUT_TEST, BINDTEST_EMULATE, TYMED_ISTREAM);
    binding_hres = exhres;

    hres = CreateURLMoniker(((void*)0), about_blankW, &mon);
    ok(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);

    SET_EXPECT(QueryInterface_IServiceProvider);
    hres = CreateAsyncBindCtx(0, (IBindStatusCallback*)&bsc, ((void*)0), &bctx);
    ok(hres == S_OK, "CreateAsyncBindCtx failed: %08x\n\n", hres);
    CHECK_CALLED(QueryInterface_IServiceProvider);

    SET_EXPECT(QueryInterface_IBindStatusCallbackEx);
    SET_EXPECT(GetBindInfo);
    SET_EXPECT(QueryInterface_IInternetProtocol);
    SET_EXPECT(OnStartBinding);
    if(is_urlmon_protocol(test_protocol))
        SET_EXPECT(SetPriority);
    SET_EXPECT(Start);

    hres = IMoniker_BindToStorage(mon, bctx, ((void*)0), &IID_IStream, (void**)&unk);
    if(SUCCEEDED(exhres))
        ok(hres == S_OK || hres == MK_S_ASYNCHRONOUS, "BindToStorage failed: %08x\n", hres);
    else
        ok(hres == exhres || hres == MK_S_ASYNCHRONOUS,
           "BindToStorage failed: %08x, expected %08x or MK_S_ASYNCHRONOUS\n", hres, exhres);

    CLEAR_CALLED(QueryInterface_IBindStatusCallbackEx);
    CHECK_CALLED(GetBindInfo);
    CHECK_CALLED(QueryInterface_IInternetProtocol);
    CHECK_CALLED(OnStartBinding);
    if(is_urlmon_protocol(test_protocol))
        CLEAR_CALLED(SetPriority);
    CHECK_CALLED(Start);

    ok(unk == ((void*)0), "unk=%p\n", unk);

    IBindCtx_Release(bctx);
    IMoniker_Release(mon);
}
