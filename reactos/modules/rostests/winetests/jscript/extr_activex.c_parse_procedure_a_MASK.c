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
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  IActiveScriptParseProcedure2 ;
typedef  int /*<<< orphan*/  IActiveScriptParse ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IActiveScriptParseProcedure2 ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static IDispatchEx *FUNC8(IActiveScriptParse *parser, const char *src)
{
    IActiveScriptParseProcedure2 *parse_proc;
    IDispatchEx *dispex;
    IDispatch *disp;
    BSTR str;
    HRESULT hres;

    hres = FUNC2(parser, &IID_IActiveScriptParseProcedure2, (void**)&parse_proc);
    FUNC7(hres == S_OK, "Could not get IActiveScriptParseProcedure2: %08x\n", hres);

    str = FUNC6(src);
    hres = FUNC0(parse_proc, str, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, &disp);
    FUNC5(str);
    FUNC1(parse_proc);
    FUNC7(hres == S_OK, "ParseProcedureText failed: %08x\n", hres);
    FUNC7(disp != NULL, "disp == NULL\n");

    hres = FUNC3(disp, &IID_IDispatchEx, (void**)&dispex);
    FUNC4(disp);
    FUNC7(hres == S_OK, "Could not get IDispatchEx iface: %08x\n", hres);

    return dispex;
}