#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG_PTR ;
struct TYPE_4__ {int lcid; int wMajorVerNum; int wMinorVerNum; int wLibFlags; } ;
typedef  TYPE_1__ TLIBATTR ;
typedef  int /*<<< orphan*/  LCID ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/ * BSTR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LANG_RUSSIAN ; 
 int LIBFLAG_FHASDISKIMAGE ; 
 int /*<<< orphan*/  LIBID_TestTypelib ; 
 int /*<<< orphan*/  LIBID_register_test ; 
 int /*<<< orphan*/  LOCALE_NEUTRAL ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int /*<<< orphan*/  SUBLANG_NEUTRAL ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int TYPE_E_LIBNOTREGISTERED ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  manifest_dep ; 
 int /*<<< orphan*/  manifest_main ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int,char*) ; 

__attribute__((used)) static void FUNC19(void)
{
    LCID lcid_en = FUNC7(FUNC6(LANG_ENGLISH, SUBLANG_ENGLISH_US), SORT_DEFAULT);
    LCID lcid_ru = FUNC7(FUNC6(LANG_RUSSIAN, SUBLANG_NEUTRAL), SORT_DEFAULT);
    ULONG_PTR cookie;
    TLIBATTR *attr;
    HANDLE handle;
    ITypeLib *tl;
    HRESULT hr;
    BSTR path;
    BOOL ret;

    if (!&pActivateActCtx)
    {
        FUNC17("Activation contexts not supported, skipping LoadRegTypeLib tests\n");
        return;
    }

    FUNC12("testdep.manifest", manifest_dep);
    FUNC12("main.manifest", manifest_main);

    handle = FUNC11("main.manifest");
    FUNC0("testdep.manifest");
    FUNC0("main.manifest");

    /* create typelib file */
    FUNC18(1, "test_actctx_tlb.tlb");
    FUNC18(3, "test_actctx_tlb2.tlb");

    hr = FUNC5(&LIBID_TestTypelib, 1, 0, LOCALE_NEUTRAL, &tl);
    FUNC13(hr == TYPE_E_LIBNOTREGISTERED, "got 0x%08x\n", hr);

    hr = FUNC5(&LIBID_register_test, 1, 0, LOCALE_NEUTRAL, &tl);
    FUNC13(hr == TYPE_E_LIBNOTREGISTERED, "got 0x%08x\n", hr);

    hr = FUNC8(&LIBID_TestTypelib, 2, 0, LOCALE_NEUTRAL, &path);
    FUNC13(hr == TYPE_E_LIBNOTREGISTERED, "got 0x%08x\n", hr);

    ret = FUNC14(handle, &cookie);
    FUNC13(ret, "ActivateActCtx failed: %u\n", FUNC1());

    path = NULL;
    hr = FUNC8(&LIBID_TestTypelib, 2, 0, LOCALE_NEUTRAL, &path);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);
    FUNC9(path);

    path = NULL;
    hr = FUNC8(&LIBID_TestTypelib, 2, 0, lcid_en, &path);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);
    FUNC9(path);

    path = NULL;
    hr = FUNC8(&LIBID_TestTypelib, 2, 0, lcid_ru, &path);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);
    FUNC9(path);

    hr = FUNC8(&LIBID_TestTypelib, 2, 8, LOCALE_NEUTRAL, &path);
    FUNC13(hr == TYPE_E_LIBNOTREGISTERED || FUNC10(hr == S_OK) /* winxp */, "got 0x%08x\n", hr);

    path = NULL;
    hr = FUNC8(&LIBID_TestTypelib, 2, 7, LOCALE_NEUTRAL, &path);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);
    FUNC9(path);

    path = NULL;
    hr = FUNC8(&LIBID_TestTypelib, 1, 0, LOCALE_NEUTRAL, &path);
    FUNC13(hr == TYPE_E_LIBNOTREGISTERED || FUNC10(hr == S_OK) /* winxp */, "got 0x%08x\n", hr);
    FUNC9(path);

    path = NULL;
    hr = FUNC8(&LIBID_TestTypelib, 0xffff, 0xffff, LOCALE_NEUTRAL, &path);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);
    FUNC9(path);

    /* manifest version is 2.0, actual is 1.0 */
    hr = FUNC5(&LIBID_register_test, 1, 0, LOCALE_NEUTRAL, &tl);
    FUNC13(hr == TYPE_E_LIBNOTREGISTERED || FUNC10(hr == S_OK) /* winxp */, "got 0x%08x\n", hr);
    if (hr == S_OK) FUNC3(tl);

    hr = FUNC5(&LIBID_register_test, 2, 0, LOCALE_NEUTRAL, &tl);
    FUNC13(hr == TYPE_E_LIBNOTREGISTERED, "got 0x%08x\n", hr);

    /* manifest version is 2.7, actual is 2.5 */
    hr = FUNC5(&LIBID_TestTypelib, 2, 0, LOCALE_NEUTRAL, &tl);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);
    if (hr == S_OK) FUNC3(tl);

    hr = FUNC5(&LIBID_TestTypelib, 2, 1, LOCALE_NEUTRAL, &tl);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);
    if (hr == S_OK) FUNC3(tl);

    hr = FUNC5(&LIBID_TestTypelib, 2, 0, lcid_en, &tl);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);
    if (hr == S_OK) FUNC3(tl);

    hr = FUNC5(&LIBID_TestTypelib, 2, 0, lcid_ru, &tl);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);
    if (hr == S_OK) FUNC3(tl);

    hr = FUNC5(&LIBID_TestTypelib, 2, 7, LOCALE_NEUTRAL, &tl);
    FUNC13(hr == TYPE_E_LIBNOTREGISTERED, "got 0x%08x\n", hr);

    hr = FUNC5(&LIBID_TestTypelib, 2, 5, LOCALE_NEUTRAL, &tl);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);

    hr = FUNC2(tl, &attr);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);

    FUNC13(attr->lcid == 0, "got %x\n", attr->lcid);
    FUNC13(attr->wMajorVerNum == 2, "got %d\n", attr->wMajorVerNum);
    FUNC13(attr->wMinorVerNum == 5, "got %d\n", attr->wMinorVerNum);
    FUNC13(attr->wLibFlags == LIBFLAG_FHASDISKIMAGE, "got %x\n", attr->wLibFlags);

    FUNC4(tl, attr);
    FUNC3(tl);

    hr = FUNC5(&LIBID_TestTypelib, 1, 7, LOCALE_NEUTRAL, &tl);
    FUNC13(hr == TYPE_E_LIBNOTREGISTERED, "got 0x%08x\n", hr);

    tl = NULL;
    hr = FUNC5(&LIBID_TestTypelib, 0xffff, 0xffff, LOCALE_NEUTRAL, &tl);
    FUNC13(hr == S_OK, "got 0x%08x\n", hr);

    if (tl)
    {
        hr = FUNC2(tl, &attr);
        FUNC13(hr == S_OK, "got 0x%08x\n", hr);

        FUNC13(attr->lcid == 0, "got %x\n", attr->lcid);
        FUNC13(attr->wMajorVerNum == 2, "got %d\n", attr->wMajorVerNum);
        FUNC13(attr->wMinorVerNum == 5, "got %d\n", attr->wMinorVerNum);
        FUNC13(attr->wLibFlags == LIBFLAG_FHASDISKIMAGE, "got %x\n", attr->wLibFlags);

        FUNC4(tl, attr);
        FUNC3(tl);
    }

    FUNC0("test_actctx_tlb.tlb");
    FUNC0("test_actctx_tlb2.tlb");

    ret = FUNC15(0, cookie);
    FUNC13(ret, "DeactivateActCtx failed: %u\n", FUNC1());

    FUNC16(handle);
}