
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IMoniker ;
typedef int IHlinkBrowseContext ;
typedef int IHlink ;
typedef int IBindCtx ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CO_E_ALREADYINITIALIZED ;
 int CoTaskMemFree (char*) ;
 scalar_t__ CreateBindCtx (int ,int **) ;
 scalar_t__ CreateItemMoniker (char*,char*,int **) ;
 scalar_t__ E_FAIL ;
 int HLID_CURRENT ;
 int HLID_NEXT ;
 int HLID_PREVIOUS ;
 int HLINKGETREF_DEFAULT ;
 scalar_t__ HlinkCreateBrowseContext (int *,int *,void**) ;
 int IBindCtx_Release (int *) ;
 scalar_t__ IHlinkBrowseContext_GetHlink (int *,int ,int **) ;
 int IHlinkBrowseContext_Release (int *) ;
 scalar_t__ IHlinkBrowseContext_SetInitialHlink (int *,int *,char*,int *) ;
 scalar_t__ IHlink_GetMonikerReference (int *,int ,int **,int *) ;
 int IHlink_Release (int *) ;
 int IID_IHlinkBrowseContext ;
 scalar_t__ IMoniker_GetDisplayName (int *,int *,int *,char**) ;
 int IMoniker_Release (int *) ;
 scalar_t__ S_OK ;
 int lstrcmpW (char*,char*) ;
 int ok (int,char*,scalar_t__,...) ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static void test_SetInitialHlink(void)
{
    IHlinkBrowseContext *bc;
    IHlink *found_hlink;
    IMoniker *dummy, *found_moniker;
    IBindCtx *bindctx;
    WCHAR one[] = {'1',0};
    WCHAR five[] = {'5',0};
    WCHAR *found_name, *exp_name;
    HRESULT hres;

    hres = CreateBindCtx(0, &bindctx);
    ok(hres == S_OK, "CreateBindCtx failed: 0x%08x\n", hres);

    hres = CreateItemMoniker(one, five, &dummy);
    ok(hres == S_OK, "CreateItemMoniker failed: 0x%08x\n", hres);

    hres = IMoniker_GetDisplayName(dummy, bindctx, ((void*)0), &exp_name);
    ok(hres == S_OK, "GetDisplayName failed: 0x%08x\n", hres);

    hres = HlinkCreateBrowseContext(((void*)0), &IID_IHlinkBrowseContext, (void**)&bc);
    ok(hres == S_OK, "HlinkCreateBrowseContext failed: 0x%08x\n", hres);

    hres = IHlinkBrowseContext_SetInitialHlink(bc, dummy, one, ((void*)0));
    ok(hres == S_OK, "SetInitialHlink failed: 0x%08x\n", hres);

    hres = IHlinkBrowseContext_SetInitialHlink(bc, dummy, one, ((void*)0));
    ok(hres == CO_E_ALREADYINITIALIZED, "got 0x%08x\n", hres);

    hres = IHlinkBrowseContext_SetInitialHlink(bc, dummy, five, ((void*)0));
    ok(hres == CO_E_ALREADYINITIALIZED, "got 0x%08x\n", hres);


    hres = IHlinkBrowseContext_GetHlink(bc, HLID_PREVIOUS, &found_hlink);
    ok(hres == E_FAIL, "got 0x%08x\n", hres);

    hres = IHlinkBrowseContext_GetHlink(bc, HLID_NEXT, &found_hlink);
    ok(hres == E_FAIL, "got 0x%08x\n", hres);

    hres = IHlinkBrowseContext_GetHlink(bc, HLID_CURRENT, &found_hlink);
    ok(hres == S_OK, "GetHlink failed: 0x%08x\n", hres);

    hres = IHlink_GetMonikerReference(found_hlink, HLINKGETREF_DEFAULT, &found_moniker, ((void*)0));
    ok(hres == S_OK, "GetMonikerReference failed: 0x%08x\n", hres);

    hres = IMoniker_GetDisplayName(found_moniker, bindctx, ((void*)0), &found_name);
    ok(hres == S_OK, "GetDisplayName failed: 0x%08x\n", hres);
    ok(!lstrcmpW(found_name, exp_name), "Found display name should have been %s, was: %s\n", wine_dbgstr_w(exp_name), wine_dbgstr_w(found_name));

    CoTaskMemFree(exp_name);
    CoTaskMemFree(found_name);

    IBindCtx_Release(bindctx);
    IMoniker_Release(found_moniker);
    IHlink_Release(found_hlink);
    IHlinkBrowseContext_Release(bc);
    IMoniker_Release(dummy);
}
