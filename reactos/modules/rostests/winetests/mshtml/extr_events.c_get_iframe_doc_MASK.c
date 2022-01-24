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
typedef  int /*<<< orphan*/  IHTMLIFrameElement ;
typedef  int /*<<< orphan*/  IHTMLFrameBase2 ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IHTMLFrameBase2 ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static IHTMLDocument2* FUNC6(IHTMLIFrameElement *iframe)
{
    HRESULT hres;
    IHTMLFrameBase2 *base;
    IHTMLDocument2 *result = NULL;

    hres = FUNC2(iframe, &IID_IHTMLFrameBase2, (void**)&base);
    FUNC5(hres == S_OK, "QueryInterface(IID_IHTMLFrameBase2) failed: %08x\n", hres);
    if(hres == S_OK) {
        IHTMLWindow2 *window;

        hres = FUNC1(base, &window);
        FUNC5(hres == S_OK, "get_contentWindow failed: %08x\n", hres);
        FUNC5(window != NULL, "window == NULL\n");
        if(window) {
            hres = FUNC4(window, &result);
            FUNC5(hres == S_OK, "get_document failed: %08x\n", hres);
            FUNC5(result != NULL, "result == NULL\n");
            FUNC3(window);
        }
    }
    if(base) FUNC0(base);

    return result;
}