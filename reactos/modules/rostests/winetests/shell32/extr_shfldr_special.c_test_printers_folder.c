
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ uType; int * pOleStr; } ;
struct TYPE_5__ {scalar_t__ fmt; TYPE_1__ str; } ;
typedef TYPE_2__ SHELLDETAILS ;
typedef int SHCOLSTATEF ;
typedef int * LPITEMIDLIST ;
typedef int IShellFolder2 ;
typedef int IPersistFolder2 ;
typedef int INT ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_Printers ;
 int CSIDL_PRINTERS ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int CoInitialize (int *) ;
 int CoUninitialize () ;
 int E_INVALIDARG ;
 int E_NOTIMPL ;
 int IID_IPersistFolder2 ;
 int IID_IShellFolder2 ;
 int ILFree (int *) ;
 int ILIsEqual (int *,int *) ;
 int IPersistFolder2_GetCurFolder (int *,int **) ;
 int IPersistFolder2_Initialize (int *,int *) ;
 int IPersistFolder2_Release (int *) ;
 int IShellFolder2_GetDefaultColumnState (int *,int,int*) ;
 int IShellFolder2_GetDetailsOf (int *,int *,int,TYPE_2__*) ;
 int IShellFolder2_QueryInterface (int *,int *,void**) ;
 int IShellFolder2_Release (int *) ;
 scalar_t__ LVCFMT_LEFT ;
 int SHCOLSTATE_ONBYDEFAULT ;
 int SHCOLSTATE_TYPE_INT ;
 int SHCOLSTATE_TYPE_STR ;
 scalar_t__ SHELL_OsIsUnicode () ;
 int SHFree (int *) ;
 int SHGetSpecialFolderLocation (int *,int ,int **) ;
 scalar_t__ STRRET_WSTR ;
 int S_FALSE ;
 int S_OK ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_printers_folder(void)
{
    IShellFolder2 *folder;
    IPersistFolder2 *pf;
    SHELLDETAILS details;
    SHCOLSTATEF state;
    LPITEMIDLIST pidl1, pidl2;
    HRESULT hr;
    INT i;

    CoInitialize( ((void*)0) );

    hr = CoCreateInstance(&CLSID_Printers, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IShellFolder2, (void**)&folder);
    if (hr != S_OK)
    {
        win_skip("Failed to created IShellFolder2 for Printers folder\n");
        CoUninitialize();
        return;
    }

if (0)
{

    IShellFolder2_GetDetailsOf(folder, ((void*)0), 0, ((void*)0));
    IShellFolder2_GetDefaultColumnState(folder, 0, ((void*)0));
    IPersistFolder2_GetCurFolder(pf, ((void*)0));
}


    hr = IShellFolder2_GetDetailsOf(folder, ((void*)0), 6, &details);
    ok(hr == E_NOTIMPL, "got 0x%08x\n", hr);

    hr = IShellFolder2_GetDefaultColumnState(folder, 6, &state);
    ok(broken(hr == E_NOTIMPL) || hr == E_INVALIDARG , "got 0x%08x\n", hr);

    details.str.pOleStr = ((void*)0);
    hr = IShellFolder2_GetDetailsOf(folder, ((void*)0), 0, &details);
    ok(hr == S_OK || broken(hr == E_NOTIMPL) , "got 0x%08x\n", hr);
    if (SHELL_OsIsUnicode()) SHFree(details.str.pOleStr);


    if (hr == S_OK)
    {
        ok(details.str.uType == STRRET_WSTR, "got %d\n", details.str.uType);

        for(i = 0; i < 6; i++)
        {
            hr = IShellFolder2_GetDetailsOf(folder, ((void*)0), i, &details);
            ok(hr == S_OK, "got 0x%08x\n", hr);


            ok(details.fmt == LVCFMT_LEFT, "got 0x%x\n", details.fmt);


            if (SHELL_OsIsUnicode()) SHFree(details.str.pOleStr);

            hr = IShellFolder2_GetDefaultColumnState(folder, i, &state);
            ok(hr == S_OK, "got 0x%08x\n", hr);

            if (i == 1)
                ok(state == (SHCOLSTATE_TYPE_INT | SHCOLSTATE_ONBYDEFAULT), "got 0x%x\n", state);
            else
                ok(state == (SHCOLSTATE_TYPE_STR | SHCOLSTATE_ONBYDEFAULT), "got 0x%x\n", state);
        }
    }


    hr = IShellFolder2_QueryInterface(folder, &IID_IPersistFolder2, (void**)&pf);
    ok(hr == S_OK, "got 0x%08x\n", hr);


    pidl1 = (void*)0xdeadbeef;
    hr = IPersistFolder2_GetCurFolder(pf, &pidl1);
    ok(hr == S_FALSE, "got 0x%08x\n", hr);
    ok(pidl1 == ((void*)0), "got %p\n", pidl1);

    hr = SHGetSpecialFolderLocation(((void*)0), CSIDL_PRINTERS, &pidl2);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IPersistFolder2_Initialize(pf, pidl2);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IPersistFolder2_GetCurFolder(pf, &pidl1);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    ok(ILIsEqual(pidl1, pidl2), "expected same PIDL\n");
    IPersistFolder2_Release(pf);

    ILFree(pidl1);
    ILFree(pidl2);
    IShellFolder2_Release(folder);

    CoUninitialize();
}
