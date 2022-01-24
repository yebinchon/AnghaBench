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
typedef  int /*<<< orphan*/  var ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  IOleCommandTarget ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IOleCommandTarget ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OLECMDEXECOPT_DODEFAULT ; 
 int /*<<< orphan*/  OLECMDID_ONUNLOAD ; 
 scalar_t__ S_OK ; 
 scalar_t__ VARIANT_TRUE ; 
 scalar_t__ VT_BOOL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(IHTMLDocument2 *doc)
{
    IOleCommandTarget *cmdtrg;
    VARIANT var;
    HRESULT hres;

    hres = FUNC1(doc, &IID_IOleCommandTarget, (void**)&cmdtrg);
    FUNC7(hres == S_OK, "QueryInterface(IID_IOleCommandTarget) failed: %08x\n", hres);
    if(FUNC0(hres))
        return;

    FUNC6(&var, 0x0a, sizeof(var));
    hres = FUNC2(cmdtrg, NULL, OLECMDID_ONUNLOAD,
            OLECMDEXECOPT_DODEFAULT, NULL, &var);
    FUNC7(hres == S_OK, "Exec(..., OLECMDID_ONUNLOAD, ...) failed: %08x\n", hres);
    FUNC7(FUNC5(&var) == VT_BOOL, "V_VT(var)=%d, expected VT_BOOL\n", FUNC5(&var));
    FUNC7(FUNC4(&var) == VARIANT_TRUE, "V_BOOL(var)=%x, expected VARIANT_TRUE\n", FUNC4(&var));

    hres = FUNC2(cmdtrg, NULL, OLECMDID_ONUNLOAD,
            OLECMDEXECOPT_DODEFAULT, NULL, NULL);
    FUNC7(hres == S_OK, "Exec(..., OLECMDID_ONUNLOAD, ...) failed: %08x\n", hres);

    FUNC3(cmdtrg);
}