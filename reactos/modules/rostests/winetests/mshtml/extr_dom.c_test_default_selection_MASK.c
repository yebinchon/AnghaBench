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
typedef  int /*<<< orphan*/  IHTMLTxtRange ;
typedef  int /*<<< orphan*/  IHTMLSelectionObject ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLTxtRange ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(IHTMLDocument2 *doc)
{
    IHTMLSelectionObject *selection;
    IHTMLTxtRange *range;
    IDispatch *disp;
    BSTR str;
    HRESULT hres;

    hres = FUNC2(doc, &selection);
    FUNC8(hres == S_OK, "get_selection failed: %08x\n", hres);

    hres = FUNC5(selection, &str);
    FUNC8(hres == S_OK, "get_type failed: %08x\n", hres);
    FUNC8(!FUNC9(str, "None"), "type = %s\n", FUNC11(str));
    FUNC7(str);

    hres = FUNC4(selection, &disp);
    FUNC3(selection);
    FUNC8(hres == S_OK, "createRange failed: %08x\n", hres);

    hres = FUNC0(disp, &IID_IHTMLTxtRange, (void**)&range);
    FUNC1(disp);
    FUNC8(hres == S_OK, "Could not get IHTMLTxtRange interface: %08x\n", hres);

    FUNC10(range, NULL);
    FUNC6(range);
}