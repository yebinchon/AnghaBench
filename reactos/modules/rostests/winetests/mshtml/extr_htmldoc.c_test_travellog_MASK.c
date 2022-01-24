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
typedef  int /*<<< orphan*/  ITravelLogClient ;
typedef  int /*<<< orphan*/  IHTMLWindow2 ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_FAIL ; 
 scalar_t__ E_NOINTERFACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_ITravelLogClient ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  no_travellog ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(IHTMLDocument2 *doc)
{
    ITravelLogClient *travellog_client;
    IHTMLWindow2 *window, *top_window;
    IUnknown *unk;
    HRESULT hres;

    window = NULL;
    hres = FUNC0(doc, &window);
    FUNC6(hres == S_OK, "get_parentWindow failed: %08x\n", hres);
    FUNC6(window != NULL, "window = NULL\n");

    hres = FUNC3(window, &top_window);
    FUNC2(window);
    FUNC6(hres == S_OK, "get_top failed: %08x\n", hres);

    hres = FUNC1(top_window, &IID_ITravelLogClient, (void**)&travellog_client);
    FUNC2(top_window);
    if(hres == E_NOINTERFACE) {
        FUNC7("ITravelLogClient not supported\n");
        no_travellog = TRUE;
        return;
    }
    FUNC6(hres == S_OK, "Could not get ITraveLogClient iface: %08x\n", hres);

    unk = (void*)0xdeadbeef;
    hres = FUNC4(travellog_client, 0, &unk);
    FUNC6(hres == E_FAIL, "FindWindowByIndex failed: %08x\n", hres);
    FUNC6(!unk, "unk != NULL\n");

    FUNC5(travellog_client);
}