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
typedef  int /*<<< orphan*/  urlA ;
typedef  int /*<<< orphan*/  url ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  MSG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IPersistMoniker ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IPersistMoniker ; 
 int /*<<< orphan*/  IID_IPropertyNotifySink ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int INTERNET_MAX_URL_LENGTH ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  PropertyNotifySink ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  called_external_success ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  external_success ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 
 int FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*) ; 

__attribute__((used)) static void FUNC21(const char *test_name)
{
    WCHAR url[INTERNET_MAX_URL_LENGTH];
    char urlA[INTERNET_MAX_URL_LENGTH];
    IPersistMoniker *persist;
    IHTMLDocument2 *doc;
    IMoniker *mon;
    MSG msg;
    HRESULT hres;

    static const char res[] = "res://";

    FUNC20("running %s...\n", test_name);

    doc = FUNC13();
    if(!doc)
        return;

    FUNC19(doc, TRUE);
    FUNC14(doc, &IID_IPropertyNotifySink, (IUnknown*)&PropertyNotifySink);

    FUNC16(urlA, res);
    FUNC4(NULL, urlA + FUNC17(res), sizeof(urlA) - FUNC17(res));
    FUNC15(urlA, "/");
    FUNC15(urlA, test_name);
    FUNC10(CP_ACP, 0, urlA, -1, url, sizeof(url)/sizeof(WCHAR));

    hres = FUNC1(NULL, url, &mon);
    FUNC18(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);

    hres = FUNC5(doc, &IID_IPersistMoniker, (void**)&persist);
    FUNC18(hres == S_OK, "Could not get IPersistMoniker iface: %08x\n", hres);

    hres = FUNC8(persist, FALSE, mon, NULL, 0);
    FUNC18(hres == S_OK, "Load failed: %08x\n", hres);

    FUNC7(mon);
    FUNC9(persist);

    FUNC11(external_success);

    while(!called_external_success && FUNC3(&msg, NULL, 0, 0)) {
        FUNC12(&msg);
        FUNC2(&msg);
    }

    FUNC0(external_success);

    FUNC19(doc, FALSE);
    FUNC6(doc);
}