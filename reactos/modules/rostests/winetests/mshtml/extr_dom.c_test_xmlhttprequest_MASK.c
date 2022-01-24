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
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLXMLHttpRequestFactory ;
typedef  int /*<<< orphan*/  IHTMLXMLHttpRequest ;
typedef  int /*<<< orphan*/  IHTMLWindow5 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DIID_DispHTMLXMLHttpRequest ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLXMLHttpRequestFactory ; 
 scalar_t__ S_OK ; 
 scalar_t__ VT_DISPATCH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC11(IHTMLWindow5 *window)
{
    HRESULT hres;
    VARIANT var;
    IHTMLXMLHttpRequestFactory *factory;
    IHTMLXMLHttpRequest *xml;

    hres = FUNC1(window, &var);
    FUNC9(hres == S_OK, "get_XMLHttpRequest failed: %08x\n", hres);
    FUNC9(FUNC6(&var) == VT_DISPATCH, "expect VT_DISPATCH, got %s\n", FUNC8(&var));

    factory = NULL;
    hres = FUNC0(FUNC5(&var), &IID_IHTMLXMLHttpRequestFactory, (void**)&factory);
    FUNC9(hres == S_OK, "QueryInterface(&IID_IHTMLXMLHttpRequestFactory) failed: %08x\n", hres);
    FUNC9(factory != NULL, "factory == NULL\n");

    xml = NULL;
    hres = FUNC3(factory, &xml);
    FUNC9(hres == S_OK, "create failed: %08x\n", hres);
    FUNC9(xml != NULL, "xml == NULL\n");
    FUNC10((IUnknown*)xml, &DIID_DispHTMLXMLHttpRequest, "[object]");

    FUNC4(xml);
    FUNC2(factory);
    FUNC7(&var);
}