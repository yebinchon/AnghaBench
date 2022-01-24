#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t ULONG ;
struct TYPE_7__ {scalar_t__ vt; } ;
struct TYPE_6__ {size_t cbSizeInstance; int cbAlignment; } ;
typedef  TYPE_1__ TYPEATTR ;
typedef  int SYSKIND ;
typedef  char OLECHAR ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  ICreateTypeLib2 ;
typedef  int /*<<< orphan*/  ICreateTypeInfo ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HREFTYPE ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_ITypeInfo ; 
 int /*<<< orphan*/  IID_ITypeLib ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  REGKIND_NONE ; 
#define  SYS_WIN32 129 
#define  SYS_WIN64 128 
 scalar_t__ S_OK ; 
 TYPE_2__* TDATests ; 
 int /*<<< orphan*/  TKIND_INTERFACE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC17 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

__attribute__((used)) static void FUNC20(SYSKIND kind)
{
    CHAR filenameA[MAX_PATH];
    WCHAR filenameW[MAX_PATH];
    ITypeLib *tl;
    ICreateTypeLib2 *ctl;
    ITypeInfo *ti;
    ICreateTypeInfo *cti;
    HREFTYPE hreftype;
    TYPEATTR *typeattr;
    ULONG href_cbSizeInstance, i;
    WORD href_cbAlignment, ptr_size;
    HRESULT hr;

    static OLECHAR interfaceW[] = {'i','n','t','e','r','f','a','c','e',0};

    switch(kind){
    case SYS_WIN32:
        FUNC19("testing SYS_WIN32\n");
        ptr_size = 4;
        break;
    case SYS_WIN64:
        FUNC19("testing SYS_WIN64\n");
        ptr_size = 8;
        break;
    default:
        return;
    }

    FUNC2(".", "tlb", 0, filenameA);
    FUNC16(CP_ACP, 0, filenameA, -1, filenameW, MAX_PATH);

    hr = FUNC0(kind, filenameW, &ctl);
    FUNC17(hr == S_OK, "got %08x\n", hr);

    hr = FUNC6(ctl, interfaceW, TKIND_INTERFACE, &cti);
    FUNC17(hr == S_OK, "got %08x\n", hr);

    hr = FUNC4(cti, &IID_ITypeInfo, (void**)&ti);
    FUNC17(hr == S_OK, "got %08x\n", hr);

    hr = FUNC3(cti, ti, &hreftype);
    FUNC17(hr == S_OK, "got %08x\n", hr);

    hr = FUNC10(ti, &typeattr);
    FUNC17(hr == S_OK, "got %08x\n", hr);

    href_cbSizeInstance = typeattr->cbSizeInstance;
    href_cbAlignment = typeattr->cbAlignment;

    FUNC12(ti, typeattr);

    FUNC11(ti);
    FUNC5(cti);

    hr = FUNC7(ctl, &IID_ITypeLib, (void**)&tl);
    FUNC17(hr == S_OK, "got %08x\n", hr);

    for(i = 0; TDATests[i].vt; ++i)
        FUNC18(tl, &TDATests[i], ptr_size, hreftype, href_cbSizeInstance, href_cbAlignment, TRUE);

    hr = FUNC9(ctl);
    FUNC17(hr == S_OK, "got %08x\n", hr);

    FUNC14(tl);
    FUNC17(0 == FUNC8(ctl), "typelib should have been released\n");

    FUNC19("after save...\n");

    hr = FUNC15(filenameW, REGKIND_NONE, &tl);
    FUNC17(hr == S_OK, "got %08x\n", hr);

    hr = FUNC13(tl, 0, &ti);
    FUNC17(hr == S_OK, "got %08x\n", hr);

    hr = FUNC10(ti, &typeattr);
    FUNC17(hr == S_OK, "got %08x\n", hr);

    href_cbSizeInstance = typeattr->cbSizeInstance;
    href_cbAlignment = typeattr->cbAlignment;

    FUNC12(ti, typeattr);
    FUNC11(ti);

    for(i = 0; TDATests[i].vt; ++i)
        FUNC18(tl, &TDATests[i], ptr_size, hreftype, href_cbSizeInstance, href_cbAlignment, FALSE);

    FUNC17(0 == FUNC14(tl), "typelib should have been released\n");

    FUNC1(filenameA);
}