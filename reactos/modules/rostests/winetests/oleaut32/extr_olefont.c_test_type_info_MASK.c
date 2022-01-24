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
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int UINT ;
struct TYPE_3__ {int /*<<< orphan*/ * rgvarg; scalar_t__ cArgs; int /*<<< orphan*/ * rgdispidNamedArgs; scalar_t__ cNamedArgs; } ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  LCID ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  IFontDisp ;
typedef  int HRESULT ;
typedef  TYPE_1__ DISPPARAMS ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_PROPERTYGET ; 
 int /*<<< orphan*/  DISPID_FONT_NAME ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IFontDisp ; 
 int /*<<< orphan*/  IID_NULL ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LOCALE_NEUTRAL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC13(void)
{
        LPVOID pvObj = NULL;
        HRESULT hres;
        IFontDisp*  fontdisp = NULL;
	ITypeInfo* pTInfo;
	WCHAR name_Name[] = {'N','a','m','e',0};
	BSTR names[3];
	UINT n;
        LCID en_us = FUNC6(FUNC5(LANG_ENGLISH,SUBLANG_ENGLISH_US),
                SORT_DEFAULT);
        DISPPARAMS dispparams;
        VARIANT varresult;

        FUNC12(NULL, &IID_IFontDisp, &pvObj);
        fontdisp = pvObj;

	hres = FUNC0(fontdisp, 0, en_us, &pTInfo);
	FUNC11(hres == S_OK, "GTI returned 0x%08x instead of S_OK.\n", hres);
	FUNC11(pTInfo != NULL, "GTI returned NULL.\n");

	hres = FUNC3(pTInfo, DISPID_FONT_NAME, names, 3, &n);
	FUNC11(hres == S_OK, "GetNames returned 0x%08x instead of S_OK.\n", hres);
	FUNC11(n == 1, "GetNames returned %d names instead of 1.\n", n);
	FUNC11(!FUNC10(names[0],name_Name), "DISPID_FONT_NAME doesn't get 'Names'.\n");
	FUNC7(names[0]);

	FUNC4(pTInfo);

        dispparams.cNamedArgs = 0;
        dispparams.rgdispidNamedArgs = NULL;
        dispparams.cArgs = 0;
        dispparams.rgvarg = NULL;
        FUNC9(&varresult);
        hres = FUNC1(fontdisp, DISPID_FONT_NAME, &IID_NULL,
            LOCALE_NEUTRAL, DISPATCH_PROPERTYGET, &dispparams, &varresult,
            NULL, NULL);
        FUNC11(hres == S_OK, "IFontDisp_Invoke return 0x%08x instead of S_OK.\n", hres);
        FUNC8(&varresult);

	FUNC2(fontdisp);
}