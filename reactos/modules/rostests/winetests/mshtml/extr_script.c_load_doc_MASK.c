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
typedef  char WCHAR ;
typedef  char OLECHAR ;
typedef  int /*<<< orphan*/  MSG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLElement ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DISPID ;

/* Variables and functions */
 scalar_t__ DISPID_IHTMLBODYELEMENT_BACKGROUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IPropertyNotifySink ; 
 int /*<<< orphan*/  IID_NULL ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  PropertyNotifySink ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  doc_complete ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC9(IHTMLDocument2 *doc, const char *str)
{
    IHTMLElement *body = NULL;
    MSG msg;
    HRESULT hres;
    static const WCHAR ucPtr[] = {'b','a','c','k','g','r','o','u','n','d',0};
    DISPID dispID = -1;
    OLECHAR *name;

    FUNC7(doc, str);
    FUNC6(doc, &IID_IPropertyNotifySink, (IUnknown*)&PropertyNotifySink);

    while(!doc_complete && FUNC1(&msg, NULL, 0, 0)) {
        FUNC5(&msg);
        FUNC0(&msg);
    }

    hres = FUNC2(doc, &body);
    FUNC8(hres == S_OK, "get_body failed: %08x\n", hres);

    /* Check we can query for function on the IHTMLElementBody interface */
    name = (WCHAR*)ucPtr;
    hres = FUNC3(body, &IID_NULL, &name, 1, LOCALE_USER_DEFAULT, &dispID);
    FUNC8(hres == S_OK, "GetIDsOfNames(background) failed %08x\n", hres);
    FUNC8(dispID == DISPID_IHTMLBODYELEMENT_BACKGROUND, "Incorrect dispID got (%d)\n", dispID);

    FUNC4(body);
}