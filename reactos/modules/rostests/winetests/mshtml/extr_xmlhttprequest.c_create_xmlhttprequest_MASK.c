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
typedef  int /*<<< orphan*/  IHTMLXMLHttpRequestFactory ;
typedef  int /*<<< orphan*/  IHTMLWindow5 ;
typedef  int /*<<< orphan*/  IHTMLWindow2 ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IHTMLWindow5 ; 
 int /*<<< orphan*/  IID_IHTMLXMLHttpRequestFactory ; 
 scalar_t__ S_OK ; 
 scalar_t__ VT_DISPATCH ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/ * xhr ; 

__attribute__((used)) static void FUNC15(IHTMLDocument2 *doc)
{
    IHTMLWindow2 *window;
    IHTMLWindow5 *window5;
    VARIANT var;
    IHTMLXMLHttpRequestFactory *factory;
    HRESULT hres;

    hres = FUNC2(doc, &window);
    FUNC13(hres == S_OK, "get_parentWindow failed: %08x\n", hres);
    FUNC13(window != NULL, "window == NULL\n");

    hres = FUNC3(window, &IID_IHTMLWindow5, (void**)&window5);
    FUNC4(window);
    if(FUNC0(hres)) {
        FUNC14("IHTMLWindow5 not supported\n");
        return;
    }

    FUNC12(&var);
    hres = FUNC6(window5, &var);
    FUNC5(window5);
    FUNC13(hres == S_OK, "get_XMLHttpRequest failed: %08x\n", hres);
    FUNC13(FUNC10(&var) == VT_DISPATCH, "V_VT(&var) is %08x, expected VT_DISPATCH\n", FUNC10(&var));

    hres = FUNC1(FUNC9(&var), &IID_IHTMLXMLHttpRequestFactory, (void**)&factory);
    FUNC11(&var);
    FUNC13(hres == S_OK, "QueryInterface(IID_IHTMLXMLHttpRequestFactory) failed: %08x\n", hres);
    FUNC13(factory != NULL, "factory == NULL\n");

    hres = FUNC8(factory, &xhr);
    FUNC7(factory);
    FUNC13(hres == S_OK, "create failed: %08x\n", hres);
    FUNC13(xhr != NULL, "xhr == NULL\n");
}