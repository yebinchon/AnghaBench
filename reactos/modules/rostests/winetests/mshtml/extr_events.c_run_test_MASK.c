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
typedef  int /*<<< orphan*/  (* testfunc_t ) (int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  MSG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IPropertyNotifySink ; 
 int /*<<< orphan*/  PropertyNotifySink ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  doc_complete ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/ * window ; 

__attribute__((used)) static void FUNC14(const char *str, testfunc_t test)
{
    IHTMLDocument2 *doc;
    IHTMLElement *body = NULL;
    MSG msg;
    HRESULT hres;

    doc = FUNC8();
    if (!doc)
        return;
    FUNC12(doc, TRUE);
    FUNC10(doc, str);
    FUNC9((IUnknown*)doc, &IID_IPropertyNotifySink, (IUnknown*)&PropertyNotifySink);

    while(!doc_complete && FUNC1(&msg, NULL, 0, 0)) {
        FUNC7(&msg);
        FUNC0(&msg);
    }

    hres = FUNC3(doc, &body);
    FUNC11(hres == S_OK, "get_body failed: %08x\n", hres);

    if(body) {
        FUNC5(body);

        hres = FUNC4(doc, &window);
        FUNC11(hres == S_OK, "get_parentWindow failed: %08x\n", hres);
        FUNC11(window != NULL, "window == NULL\n");

        test(doc);

        FUNC6(window);
        window = NULL;
    }else {
        FUNC13("Could not get document body. Assuming no Gecko installed.\n");
    }

    FUNC12(doc, FALSE);
    FUNC2(doc);
}