
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IMoniker ;
typedef int IBindCtx ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateURLMoniker (int *,int ,int **) ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (scalar_t__) ;
 int IBindCtx_Release (int *) ;
 int IID_IStream ;
 scalar_t__ IMoniker_BindToStorage (int *,int *,int *,int *,void**) ;
 int IMoniker_Release (int *) ;
 scalar_t__ INET_E_DATA_NOT_AVAILABLE ;
 scalar_t__ MK_E_SYNTAX ;
 int S_FALSE ;
 scalar_t__ S_OK ;
 int about_blankW ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCreateAsyncBindCtxEx (int *,int ,int *,int *,int **,int ) ;
 int test_ReportResult (int ) ;

__attribute__((used)) static void test_BindToStorage_fail(void)
{
    IMoniker *mon = ((void*)0);
    IBindCtx *bctx = ((void*)0);
    IUnknown *unk;
    HRESULT hres;

    hres = CreateURLMoniker(((void*)0), about_blankW, &mon);
    ok(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = pCreateAsyncBindCtxEx(((void*)0), 0, ((void*)0), ((void*)0), &bctx, 0);
    ok(hres == S_OK, "CreateAsyncBindCtxEx failed: %08x\n", hres);

    unk = (void*)0xdeadbeef;
    hres = IMoniker_BindToStorage(mon, bctx, ((void*)0), &IID_IStream, (void**)&unk);
    ok(hres == MK_E_SYNTAX || hres == INET_E_DATA_NOT_AVAILABLE,
       "hres=%08x, expected MK_E_SYNTAX or INET_E_DATA_NOT_AVAILABLE\n", hres);
    ok(unk == ((void*)0), "got %p\n", unk);

    IBindCtx_Release(bctx);

    IMoniker_Release(mon);

    test_ReportResult(E_NOTIMPL);
    test_ReportResult(S_FALSE);
}
