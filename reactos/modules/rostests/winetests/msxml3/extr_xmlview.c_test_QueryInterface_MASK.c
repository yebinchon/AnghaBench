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
typedef  int /*<<< orphan*/  IHTMLDocument ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_XMLView ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLDocument ; 
 int /*<<< orphan*/  IID_IOleCommandTarget ; 
 int /*<<< orphan*/  IID_IOleObject ; 
 int /*<<< orphan*/  IID_IPersistHistory ; 
 int /*<<< orphan*/  IID_IPersistMoniker ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    IUnknown *xmlview, *unk;
    IHTMLDocument *htmldoc;
    HRESULT hres;

    hres = FUNC0(&CLSID_XMLView, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IUnknown, (void**)&xmlview);
    if(FUNC1(hres)) {
        FUNC7("Failed to create XMLView instance\n");
        return;
    }
    FUNC6(hres == S_OK, "CoCreateInstance returned %x, expected S_OK\n", hres);

    hres = FUNC4(xmlview, &IID_IPersistMoniker, (void**)&unk);
    FUNC6(hres == S_OK, "QueryInterface(IID_IPersistMoniker) returned %x, expected S_OK\n", hres);
    FUNC5(unk);

    hres = FUNC4(xmlview, &IID_IPersistHistory, (void**)&unk);
    FUNC6(hres == S_OK, "QueryInterface(IID_IPersistHistory) returned %x, expected S_OK\n", hres);
    FUNC5(unk);

    hres = FUNC4(xmlview, &IID_IOleCommandTarget, (void**)&unk);
    FUNC6(hres == S_OK, "QueryInterface(IID_IOleCommandTarget) returned %x, expected S_OK\n", hres);
    FUNC5(unk);

    hres = FUNC4(xmlview, &IID_IOleObject, (void**)&unk);
    FUNC6(hres == S_OK, "QueryInterface(IID_IOleObject) returned %x, expected S_OK\n", hres);
    FUNC5(unk);

    hres = FUNC4(xmlview, &IID_IHTMLDocument, (void**)&htmldoc);
    FUNC6(hres == S_OK, "QueryInterface(IID_IHTMLDocument) returned %x, expected S_OK\n", hres);
    hres = FUNC2(htmldoc, &IID_IUnknown, (void**)&unk);
    FUNC6(hres == S_OK, "QueryInterface(IID_IUnknown) returned %x, expected S_OK\n", hres);
    FUNC6(unk == xmlview, "Aggregation is not working as expected\n");
    FUNC5(unk);
    FUNC3(htmldoc);

    FUNC5(xmlview);
}