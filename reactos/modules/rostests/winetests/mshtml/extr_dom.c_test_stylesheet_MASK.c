#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLStyleSheetRulesCollection ;
typedef  int /*<<< orphan*/  IHTMLStyleSheet ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DIID_DispHTMLStyleSheet ; 
 int /*<<< orphan*/  DIID_DispHTMLStyleSheetRulesCollection ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IHTMLStyleSheet ; 
 int /*<<< orphan*/  IID_IHTMLStyleSheetRulesCollection ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(IDispatch *disp)
{
    IHTMLStyleSheetRulesCollection *col = NULL;
    IHTMLStyleSheet *stylesheet;
    HRESULT hres;
    BSTR href;

    FUNC8((IUnknown*)disp, &DIID_DispHTMLStyleSheet, &IID_IHTMLStyleSheet, "[object]");

    hres = FUNC0(disp, &IID_IHTMLStyleSheet, (void**)&stylesheet);
    FUNC6(hres == S_OK, "Could not get IHTMLStyleSheet: %08x\n", hres);

    hres = FUNC4(stylesheet, &col);
    FUNC6(hres == S_OK, "get_rules failed: %08x\n", hres);
    FUNC6(col != NULL, "col == NULL\n");

    FUNC8((IUnknown*)col, &DIID_DispHTMLStyleSheetRulesCollection, &IID_IHTMLStyleSheetRulesCollection, "[object]");
    FUNC1(col);

    href = (void*)0xdeadbeef;
    hres = FUNC3(stylesheet, &href);
    FUNC6(hres == S_OK, "get_href failed: %08x\n", hres);
    FUNC6(href == NULL, "got href != NULL\n");
    FUNC5(href);

    FUNC9(stylesheet, ".body {", FALSE);
    FUNC7(stylesheet, ".div { margin-right: 1px; }\n.body { margin-right: 2px; }", TRUE);
    FUNC9(stylesheet, ".div {", TRUE);
    FUNC7(stylesheet, "", FALSE);
    FUNC9(stylesheet, NULL, FALSE);
    FUNC7(stylesheet, ".div { margin-right: 1px; }", FALSE);
    FUNC9(stylesheet, ".div {", FALSE);

    FUNC2(stylesheet);
}