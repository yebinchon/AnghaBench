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
typedef  int /*<<< orphan*/  IHTMLWindow2 ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GetExternal ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(IHTMLDocument2 *doc, BOOL initialized)
{
    IDispatch *external;
    IHTMLWindow2 *htmlwin;
    HRESULT hres;

    hres = FUNC1(doc, &htmlwin);
    FUNC5(hres == S_OK, "get_parentWindow failed: %08x\n", hres);

    if(initialized)
        FUNC4(GetExternal);
    external = (void*)0xdeadbeef;
    hres = FUNC3(htmlwin, &external);
    if(initialized) {
        FUNC5(hres == S_FALSE || hres == S_OK, "get_external failed: %08x\n", hres);
        FUNC0(GetExternal);
        FUNC5(external != NULL, "external == NULL\n");
    }else {
        FUNC5(hres == S_OK, "get_external failed: %08x\n", hres);
        FUNC5(external == NULL, "external != NULL\n");
    }

    FUNC2(htmlwin);
}