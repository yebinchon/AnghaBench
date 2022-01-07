
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_4__ {int lcid; int wMajorVerNum; int wMinorVerNum; int wLibFlags; } ;
typedef TYPE_1__ TLIBATTR ;
typedef int LCID ;
typedef int ITypeLib ;
typedef int HRESULT ;
typedef int HANDLE ;
typedef int * BSTR ;
typedef int BOOL ;


 int DeleteFileA (char*) ;
 int GetLastError () ;
 int ITypeLib_GetLibAttr (int *,TYPE_1__**) ;
 int ITypeLib_Release (int *) ;
 int ITypeLib_ReleaseTLibAttr (int *,TYPE_1__*) ;
 int LANG_ENGLISH ;
 int LANG_RUSSIAN ;
 int LIBFLAG_FHASDISKIMAGE ;
 int LIBID_TestTypelib ;
 int LIBID_register_test ;
 int LOCALE_NEUTRAL ;
 int LoadRegTypeLib (int *,int,int,int ,int **) ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int QueryPathOfRegTypeLib (int *,int,int,int ,int **) ;
 int SORT_DEFAULT ;
 int SUBLANG_ENGLISH_US ;
 int SUBLANG_NEUTRAL ;
 int S_OK ;
 int SysFreeString (int *) ;
 int TYPE_E_LIBNOTREGISTERED ;
 scalar_t__ broken (int) ;
 int create_actctx (char*) ;
 int create_manifest_file (char*,int ) ;
 int manifest_dep ;
 int manifest_main ;
 int ok (int,char*,int) ;
 int pActivateActCtx (int ,int *) ;
 int pDeactivateActCtx (int ,int ) ;
 int pReleaseActCtx (int ) ;
 int win_skip (char*) ;
 int write_typelib (int,char*) ;

__attribute__((used)) static void test_LoadRegTypeLib(void)
{
    LCID lcid_en = MAKELCID(MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US), SORT_DEFAULT);
    LCID lcid_ru = MAKELCID(MAKELANGID(LANG_RUSSIAN, SUBLANG_NEUTRAL), SORT_DEFAULT);
    ULONG_PTR cookie;
    TLIBATTR *attr;
    HANDLE handle;
    ITypeLib *tl;
    HRESULT hr;
    BSTR path;
    BOOL ret;

    if (!pActivateActCtx)
    {
        win_skip("Activation contexts not supported, skipping LoadRegTypeLib tests\n");
        return;
    }

    create_manifest_file("testdep.manifest", manifest_dep);
    create_manifest_file("main.manifest", manifest_main);

    handle = create_actctx("main.manifest");
    DeleteFileA("testdep.manifest");
    DeleteFileA("main.manifest");


    write_typelib(1, "test_actctx_tlb.tlb");
    write_typelib(3, "test_actctx_tlb2.tlb");

    hr = LoadRegTypeLib(&LIBID_TestTypelib, 1, 0, LOCALE_NEUTRAL, &tl);
    ok(hr == TYPE_E_LIBNOTREGISTERED, "got 0x%08x\n", hr);

    hr = LoadRegTypeLib(&LIBID_register_test, 1, 0, LOCALE_NEUTRAL, &tl);
    ok(hr == TYPE_E_LIBNOTREGISTERED, "got 0x%08x\n", hr);

    hr = QueryPathOfRegTypeLib(&LIBID_TestTypelib, 2, 0, LOCALE_NEUTRAL, &path);
    ok(hr == TYPE_E_LIBNOTREGISTERED, "got 0x%08x\n", hr);

    ret = pActivateActCtx(handle, &cookie);
    ok(ret, "ActivateActCtx failed: %u\n", GetLastError());

    path = ((void*)0);
    hr = QueryPathOfRegTypeLib(&LIBID_TestTypelib, 2, 0, LOCALE_NEUTRAL, &path);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    SysFreeString(path);

    path = ((void*)0);
    hr = QueryPathOfRegTypeLib(&LIBID_TestTypelib, 2, 0, lcid_en, &path);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    SysFreeString(path);

    path = ((void*)0);
    hr = QueryPathOfRegTypeLib(&LIBID_TestTypelib, 2, 0, lcid_ru, &path);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    SysFreeString(path);

    hr = QueryPathOfRegTypeLib(&LIBID_TestTypelib, 2, 8, LOCALE_NEUTRAL, &path);
    ok(hr == TYPE_E_LIBNOTREGISTERED || broken(hr == S_OK) , "got 0x%08x\n", hr);

    path = ((void*)0);
    hr = QueryPathOfRegTypeLib(&LIBID_TestTypelib, 2, 7, LOCALE_NEUTRAL, &path);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    SysFreeString(path);

    path = ((void*)0);
    hr = QueryPathOfRegTypeLib(&LIBID_TestTypelib, 1, 0, LOCALE_NEUTRAL, &path);
    ok(hr == TYPE_E_LIBNOTREGISTERED || broken(hr == S_OK) , "got 0x%08x\n", hr);
    SysFreeString(path);

    path = ((void*)0);
    hr = QueryPathOfRegTypeLib(&LIBID_TestTypelib, 0xffff, 0xffff, LOCALE_NEUTRAL, &path);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    SysFreeString(path);


    hr = LoadRegTypeLib(&LIBID_register_test, 1, 0, LOCALE_NEUTRAL, &tl);
    ok(hr == TYPE_E_LIBNOTREGISTERED || broken(hr == S_OK) , "got 0x%08x\n", hr);
    if (hr == S_OK) ITypeLib_Release(tl);

    hr = LoadRegTypeLib(&LIBID_register_test, 2, 0, LOCALE_NEUTRAL, &tl);
    ok(hr == TYPE_E_LIBNOTREGISTERED, "got 0x%08x\n", hr);


    hr = LoadRegTypeLib(&LIBID_TestTypelib, 2, 0, LOCALE_NEUTRAL, &tl);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    if (hr == S_OK) ITypeLib_Release(tl);

    hr = LoadRegTypeLib(&LIBID_TestTypelib, 2, 1, LOCALE_NEUTRAL, &tl);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    if (hr == S_OK) ITypeLib_Release(tl);

    hr = LoadRegTypeLib(&LIBID_TestTypelib, 2, 0, lcid_en, &tl);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    if (hr == S_OK) ITypeLib_Release(tl);

    hr = LoadRegTypeLib(&LIBID_TestTypelib, 2, 0, lcid_ru, &tl);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    if (hr == S_OK) ITypeLib_Release(tl);

    hr = LoadRegTypeLib(&LIBID_TestTypelib, 2, 7, LOCALE_NEUTRAL, &tl);
    ok(hr == TYPE_E_LIBNOTREGISTERED, "got 0x%08x\n", hr);

    hr = LoadRegTypeLib(&LIBID_TestTypelib, 2, 5, LOCALE_NEUTRAL, &tl);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = ITypeLib_GetLibAttr(tl, &attr);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    ok(attr->lcid == 0, "got %x\n", attr->lcid);
    ok(attr->wMajorVerNum == 2, "got %d\n", attr->wMajorVerNum);
    ok(attr->wMinorVerNum == 5, "got %d\n", attr->wMinorVerNum);
    ok(attr->wLibFlags == LIBFLAG_FHASDISKIMAGE, "got %x\n", attr->wLibFlags);

    ITypeLib_ReleaseTLibAttr(tl, attr);
    ITypeLib_Release(tl);

    hr = LoadRegTypeLib(&LIBID_TestTypelib, 1, 7, LOCALE_NEUTRAL, &tl);
    ok(hr == TYPE_E_LIBNOTREGISTERED, "got 0x%08x\n", hr);

    tl = ((void*)0);
    hr = LoadRegTypeLib(&LIBID_TestTypelib, 0xffff, 0xffff, LOCALE_NEUTRAL, &tl);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    if (tl)
    {
        hr = ITypeLib_GetLibAttr(tl, &attr);
        ok(hr == S_OK, "got 0x%08x\n", hr);

        ok(attr->lcid == 0, "got %x\n", attr->lcid);
        ok(attr->wMajorVerNum == 2, "got %d\n", attr->wMajorVerNum);
        ok(attr->wMinorVerNum == 5, "got %d\n", attr->wMinorVerNum);
        ok(attr->wLibFlags == LIBFLAG_FHASDISKIMAGE, "got %x\n", attr->wLibFlags);

        ITypeLib_ReleaseTLibAttr(tl, attr);
        ITypeLib_Release(tl);
    }

    DeleteFileA("test_actctx_tlb.tlb");
    DeleteFileA("test_actctx_tlb2.tlb");

    ret = pDeactivateActCtx(0, cookie);
    ok(ret, "DeactivateActCtx failed: %u\n", GetLastError());

    pReleaseActCtx(handle);
}
