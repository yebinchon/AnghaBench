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
typedef  int ULONG ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IOmNavigator ;
typedef  int /*<<< orphan*/  IHTMLWindow2 ;
typedef  int /*<<< orphan*/  IHTMLPluginsCollection ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DIID_DispCPlugins ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IHTMLPluginsCollection ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int S_OK ; 
 int /*<<< orphan*/  VARIANT_FALSE ; 
 int /*<<< orphan*/  VARIANT_TRUE ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC11(IHTMLDocument2 *doc)
{
    IHTMLPluginsCollection *col, *col2;
    IHTMLWindow2 *window;
    IOmNavigator *nav;
    ULONG ref;
    LONG len;
    HRESULT hres;

    window = FUNC7(doc);
    hres = FUNC4(window, &nav);
    FUNC9(hres == S_OK, "get_navigator failed: %08x\n", hres);
    FUNC3(window);

    hres = FUNC6(nav, &col);
    FUNC9(hres == S_OK, "get_plugins failed: %08x\n", hres);

    hres = FUNC6(nav, &col2);
    FUNC9(hres == S_OK, "get_plugins failed: %08x\n", hres);
    FUNC9(FUNC8((IUnknown*)col, (IUnknown*)col2), "col != col2\n");
    FUNC0(col2);

    FUNC10((IUnknown*)col, &DIID_DispCPlugins, &IID_IHTMLPluginsCollection, "[object]");

    len = 0xdeadbeef;
    hres = FUNC1(col, &len);
    FUNC9(hres == S_OK, "get_length failed: %08x\n", hres);
    FUNC9(!len, "length = %d\n", len);

    hres = FUNC2(col, VARIANT_FALSE);
    FUNC9(hres == S_OK, "refresh failed: %08x\n", hres);

    hres = FUNC2(col, VARIANT_TRUE);
    FUNC9(hres == S_OK, "refresh failed: %08x\n", hres);

    ref = FUNC0(col);
    FUNC9(!ref, "ref=%d\n", ref);

    FUNC5(nav);
}