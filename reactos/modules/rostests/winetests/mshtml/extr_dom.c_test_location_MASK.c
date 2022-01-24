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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IHTMLWindow2 ;
typedef  int /*<<< orphan*/  IHTMLLocation ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DIID_DispHTMLLocation ; 
 scalar_t__ E_POINTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IHTMLLocation ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  location_iids ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(IHTMLDocument2 *doc)
{
    IHTMLLocation *location, *location2;
    IHTMLWindow2 *window;
    BSTR str;
    ULONG ref;
    HRESULT hres;

    hres = FUNC0(doc, &location);
    FUNC7(hres == S_OK, "get_location failed: %08x\n", hres);

    hres = FUNC0(doc, &location2);
    FUNC7(hres == S_OK, "get_location failed: %08x\n", hres);

    FUNC7(location == location2, "location != location2\n");
    FUNC2(location2);

    hres = FUNC1(doc, &window);
    FUNC7(hres == S_OK, "get_parentWindow failed: %08x\n", hres);

    hres = FUNC5(window, &location2);
    FUNC7(hres == S_OK, "get_location failed: %08x\n", hres);
    FUNC7(location == location2, "location != location2\n");
    FUNC2(location2);

    FUNC10((IUnknown*)location, location_iids);
    FUNC9((IUnknown*)location, &DIID_DispHTMLLocation, &IID_IHTMLLocation, "about:blank");

    hres = FUNC4(location, &str);
    FUNC7(hres == S_OK, "get_pathname failed: %08x\n", hres);
    FUNC7(!FUNC8(str, "blank"), "unexpected pathname %s\n", FUNC11(str));
    FUNC6(str);

    hres = FUNC3(location, NULL);
    FUNC7(hres == E_POINTER, "get_href passed: %08x\n", hres);

    hres = FUNC3(location, &str);
    FUNC7(hres == S_OK, "get_href failed: %08x\n", hres);
    FUNC7(!FUNC8(str, "about:blank"), "unexpected href %s\n", FUNC11(str));
    FUNC6(str);

    ref = FUNC2(location);
    FUNC7(!ref, "location chould be destroyed here\n");
}