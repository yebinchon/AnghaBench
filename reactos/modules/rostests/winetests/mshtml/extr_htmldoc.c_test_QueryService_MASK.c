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
typedef  int /*<<< orphan*/  IServiceProvider ;
typedef  int /*<<< orphan*/  IHlinkFrame ;
typedef  int /*<<< orphan*/  IHTMLWindow2 ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  HlinkFrame ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLWindow2 ; 
 int /*<<< orphan*/  IID_IHlinkFrame ; 
 int /*<<< orphan*/  IID_IServiceProvider ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(IHTMLDocument2 *doc, BOOL success)
{
    IHTMLWindow2 *window, *sp_window;
    IServiceProvider *sp;
    IHlinkFrame *hf;
    HRESULT hres;

    hres = FUNC0(doc, &IID_IServiceProvider, (void**)&sp);
    FUNC7(hres == S_OK, "QueryService returned %08x\n", hres);

    hres = FUNC5(sp, &IID_IHlinkFrame, &IID_IHlinkFrame, (void**)&hf);
    if(!success) {
        FUNC7(hres == E_NOINTERFACE, "QueryService returned %08x, expected E_NOINTERFACE\n", hres);
        FUNC6(sp);
        return;
    }

    FUNC7(hres == S_OK, "QueryService(IID_IHlinkFrame) failed: %08x\n", hres);
    FUNC7(hf == &HlinkFrame, "hf != HlinkFrame\n");
    FUNC4(hf);

    FUNC6(sp);

    hres = FUNC1(doc, &window);
    FUNC7(hres == S_OK, "get_parentWindow failed: %08x\n", hres);

    hres = FUNC2(window, &IID_IServiceProvider, (void**)&sp);
    FUNC7(hres == S_OK, "Could not get IServiceProvider iface: %08x\n", hres);

    hres = FUNC5(sp, &IID_IHTMLWindow2, &IID_IHTMLWindow2, (void**)&sp_window);
    FUNC7(hres == S_OK, "QueryService(IID_IHTMLWindow2) failed: %08x\n", hres);
    /* FIXME: test returned window */
    FUNC3(sp_window);

    hres = FUNC5(sp, &IID_IHlinkFrame, &IID_IHlinkFrame, (void**)&hf);
    FUNC7(hres == S_OK, "QueryService(IID_IHlinkFrame) failed: %08x\n", hres);
    FUNC7(hf == &HlinkFrame, "hf != HlinkFrame\n");
    FUNC4(hf);

    FUNC6(sp);
    FUNC3(window);
}