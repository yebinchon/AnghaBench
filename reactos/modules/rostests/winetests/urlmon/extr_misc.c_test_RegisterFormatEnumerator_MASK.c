#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IEnumFORMATETC ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ FORMATETC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int,TYPE_1__*,int /*<<< orphan*/ **) ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

__attribute__((used)) static void FUNC10(void)
{
    IBindCtx *bctx = NULL;
    IEnumFORMATETC *format = NULL, *format2 = NULL;
    IUnknown *unk = NULL;
    HRESULT hres;

    static FORMATETC formatetc = {0,NULL,0,0,0};
    static WCHAR wszEnumFORMATETC[] =
        {'_','E','n','u','m','F','O','R','M','A','T','E','T','C','_',0};

    FUNC0(0, &bctx);

    hres = FUNC1(1, &formatetc, &format);
    FUNC9(hres == S_OK, "CreateFormatEnumerator failed: %08x\n", hres);
    if(FUNC2(hres))
        return;

    hres = FUNC6(NULL, format, 0);
    FUNC9(hres == E_INVALIDARG,
            "RegisterFormatEnumerator failed: %08x, expected E_INVALIDARG\n", hres);
    hres = FUNC6(bctx, NULL, 0);
    FUNC9(hres == E_INVALIDARG,
            "RegisterFormatEnumerator failed: %08x, expected E_INVALIDARG\n", hres);

    hres = FUNC6(bctx, format, 0);
    FUNC9(hres == S_OK, "RegisterFormatEnumerator failed: %08x\n", hres);

    hres = FUNC3(bctx, wszEnumFORMATETC, &unk);
    FUNC9(hres == S_OK, "GetObjectParam failed: %08x\n", hres);
    FUNC9(unk == (IUnknown*)format, "unk != format\n");

    hres = FUNC7(NULL, format);
    FUNC9(hres == E_INVALIDARG,
            "RevokeFormatEnumerator failed: %08x, expected E_INVALIDARG\n", hres);

    hres = FUNC7(bctx, format);
    FUNC9(hres == S_OK, "RevokeFormatEnumerator failed: %08x\n", hres);

    hres = FUNC7(bctx, format);
    FUNC9(hres == E_FAIL, "RevokeFormatEnumerator failed: %08x, expected E_FAIL\n", hres);

    hres = FUNC3(bctx, wszEnumFORMATETC, &unk);
    FUNC9(hres == E_FAIL, "GetObjectParam failed: %08x, expected E_FAIL\n", hres);

    hres = FUNC6(bctx, format, 0);
    FUNC9(hres == S_OK, "RegisterFormatEnumerator failed: %08x\n", hres);

    hres = FUNC1(1, &formatetc, &format2);
    FUNC9(hres == S_OK, "CreateFormatEnumerator failed: %08x\n", hres);

    if(FUNC8(hres)) {
        hres = FUNC7(bctx, format);
        FUNC9(hres == S_OK, "RevokeFormatEnumerator failed: %08x\n", hres);

        FUNC5(format2);
    }

    hres = FUNC3(bctx, wszEnumFORMATETC, &unk);
    FUNC9(hres == E_FAIL, "GetObjectParam failed: %08x, expected E_FAIL\n", hres);

    FUNC5(format);

    hres = FUNC6(bctx, format, 0);
    FUNC9(hres == S_OK, "RegisterFormatEnumerator failed: %08x\n", hres);
    hres = FUNC7(bctx, NULL);
    FUNC9(hres == S_OK, "RevokeFormatEnumerator failed: %08x\n", hres);
    hres = FUNC3(bctx, wszEnumFORMATETC, &unk);
    FUNC9(hres == E_FAIL, "GetObjectParam failed: %08x, expected E_FAIL\n", hres);

    FUNC5(format);
    FUNC4(bctx);
}