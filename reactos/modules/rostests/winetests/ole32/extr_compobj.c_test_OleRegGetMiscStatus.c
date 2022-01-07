
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG_PTR ;
typedef int HRESULT ;
typedef int HANDLE ;
typedef int DWORD ;


 int CLSID_StdFont ;
 int CLSID_Testclass ;
 int DVASPECT_DOCPRINT ;
 int DVASPECT_ICON ;
 int E_INVALIDARG ;
 int OLEMISC_RECOMPOSEONRESIZE ;
 int OleRegGetMiscStatus (int *,int ,int*) ;
 int REGDB_E_CLASSNOTREG ;
 int S_OK ;
 int actctx_manifest ;
 int activate_context (int ,int *) ;
 int ok (int,char*,int) ;
 int pDeactivateActCtx (int ,int ) ;
 int pReleaseActCtx (int ) ;

__attribute__((used)) static void test_OleRegGetMiscStatus(void)
{
    ULONG_PTR cookie;
    HANDLE handle;
    DWORD status;
    HRESULT hr;

    hr = OleRegGetMiscStatus(&CLSID_Testclass, DVASPECT_ICON, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    status = 0xdeadbeef;
    hr = OleRegGetMiscStatus(&CLSID_Testclass, DVASPECT_ICON, &status);
    ok(hr == REGDB_E_CLASSNOTREG, "got 0x%08x\n", hr);
    ok(status == 0, "got 0x%08x\n", status);

    status = -1;
    hr = OleRegGetMiscStatus(&CLSID_StdFont, DVASPECT_ICON, &status);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(status == 0, "got 0x%08x\n", status);

    if ((handle = activate_context(actctx_manifest, &cookie)))
    {
        status = 0;
        hr = OleRegGetMiscStatus(&CLSID_Testclass, DVASPECT_ICON, &status);
        ok(hr == S_OK, "got 0x%08x\n", hr);
        ok(status == OLEMISC_RECOMPOSEONRESIZE, "got 0x%08x\n", status);


        status = 0;
        hr = OleRegGetMiscStatus(&CLSID_StdFont, DVASPECT_ICON, &status);
        ok(hr == S_OK, "got 0x%08x\n", hr);
        ok(status == OLEMISC_RECOMPOSEONRESIZE, "got 0x%08x\n", status);


        status = -1;
        hr = OleRegGetMiscStatus(&CLSID_Testclass, DVASPECT_DOCPRINT, &status);
        ok(hr == S_OK, "got 0x%08x\n", hr);
        ok(status == 0, "got 0x%08x\n", status);

        pDeactivateActCtx(0, cookie);
        pReleaseActCtx(handle);
    }
}
