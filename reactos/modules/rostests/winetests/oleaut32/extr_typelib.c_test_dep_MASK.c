#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_7__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_8__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  ICreateTypeLib2 ;
typedef  int /*<<< orphan*/  ICreateTypeInfo ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HREFTYPE ;
typedef  TYPE_2__ GUID ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_2__ const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,TYPE_2__ const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ const IID_ISimpleIface ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,TYPE_2__ const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOCALE_NEUTRAL ; 
 scalar_t__ FUNC18 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,char*,int) ; 
 int /*<<< orphan*/  REGKIND_NONE ; 
 int /*<<< orphan*/  SYS_WIN32 ; 
 int /*<<< orphan*/  SYS_WIN64 ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TKIND_INTERFACE ; 
 int /*<<< orphan*/  TYPEFLAG_FOLEAUTOMATION ; 
 scalar_t__ TYPE_E_CANTLOADLIBRARY ; 
 scalar_t__ FUNC20 (int) ; 
 char* FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 

__attribute__((used)) static void FUNC24(void) {
    HRESULT          hr;
    const char      *refFilename;
    WCHAR            refFilenameW[MAX_PATH];
    ITypeLib        *preftLib;
    ITypeInfo       *preftInfo;
    char             filename[MAX_PATH];
    WCHAR            filenameW[MAX_PATH];
    ICreateTypeLib2 *pctLib;
    ICreateTypeInfo *pctInfo;
    ITypeLib        *ptLib;
    ITypeInfo       *ptInfo;
    ITypeInfo       *ptInfoExt = NULL;
    HREFTYPE         refType;

    static WCHAR ifacenameW[] = {'I','T','e','s','t','D','e','p',0};

    static const GUID libguid = {0xe0228f26,0x2946,0x478c,{0xb6,0x4a,0x93,0xfe,0xef,0xa5,0x05,0x32}};
    static const GUID ifaceguid = {0x394376dd,0x3bb8,0x4804,{0x8c,0xcc,0x95,0x59,0x43,0x40,0x04,0xf3}};

    FUNC23("Starting typelib dependency tests\n");

    refFilename = FUNC21(2);
    FUNC19(CP_ACP, 0, refFilename, -1, refFilenameW, MAX_PATH);

    hr = FUNC18(refFilenameW, REGKIND_NONE, &preftLib);
    FUNC22(hr == S_OK, "got %08x\n", hr);

    hr = FUNC16(preftLib, &IID_ISimpleIface, &preftInfo);
    FUNC22(hr == S_OK, "got %08x\n", hr);

    FUNC2(".", "tlb", 0, filename);
    FUNC19(CP_ACP, 0, filename, -1, filenameW, MAX_PATH);

    if(sizeof(void*) == 8) {
        hr = FUNC0(SYS_WIN64, filenameW, &pctLib);
        FUNC22(hr == S_OK, "got %08x\n", hr);
    } else {
        hr = FUNC0(SYS_WIN32, filenameW, &pctLib);
        FUNC22(hr == S_OK, "got %08x\n", hr);
    }

    hr = FUNC11(pctLib, &libguid);
    FUNC22(hr == S_OK, "got %08x\n", hr);

    hr = FUNC12(pctLib, LOCALE_NEUTRAL);
    FUNC22(hr == S_OK, "got %08x\n", hr);

    hr = FUNC8(pctLib, ifacenameW, TKIND_INTERFACE, &pctInfo);
    FUNC22(hr == S_OK, "got %08x\n", hr);

    hr = FUNC6(pctInfo, &ifaceguid);
    FUNC22(hr == S_OK, "got %08x\n", hr);

    hr = FUNC7(pctInfo, TYPEFLAG_FOLEAUTOMATION);
    FUNC22(hr == S_OK, "got %08x\n", hr);

    hr = FUNC4(pctInfo, preftInfo, &refType);
    FUNC22(hr == S_OK, "got %08x\n", hr);

    hr = FUNC3(pctInfo, 0, refType);
    FUNC22(hr == S_OK, "got %08x\n", hr);

    FUNC5(pctInfo);

    hr = FUNC10(pctLib);
    FUNC22(hr == S_OK, "got %08x\n", hr);

    FUNC9(pctLib);

    FUNC15(preftInfo);
    FUNC17(preftLib);

    FUNC1(refFilenameW);

    hr = FUNC18(filenameW, REGKIND_NONE, &ptLib);
    FUNC22(hr == S_OK, "got: %x\n", hr);

    hr = FUNC16(ptLib, &ifaceguid, &ptInfo);
    FUNC22(hr == S_OK, "got: %x\n", hr);

    hr = FUNC14(ptInfo, 0, &refType);
    FUNC22(hr == S_OK, "got: %x\n", hr);

    hr = FUNC13(ptInfo, refType, &ptInfoExt);
    FUNC22(hr == S_OK || FUNC20(hr == TYPE_E_CANTLOADLIBRARY) /* win 2000 */, "got: %x\n", hr);

    FUNC15(ptInfo);
    if(ptInfoExt)
        FUNC15(ptInfoExt);
    FUNC17(ptLib);

    FUNC1(filenameW);
}