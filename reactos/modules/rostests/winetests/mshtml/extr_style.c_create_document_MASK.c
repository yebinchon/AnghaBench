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
typedef  int /*<<< orphan*/  IHTMLDocument5 ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int CLSCTX_INPROC_HANDLER ; 
 int CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_HTMLDocument ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLDocument2 ; 
 int /*<<< orphan*/  IID_IHTMLDocument5 ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static IHTMLDocument2 *FUNC7(void)
{
    IHTMLDocument2 *doc;
    IHTMLDocument5 *doc5;
    HRESULT hres;

    hres = FUNC0(&CLSID_HTMLDocument, NULL, CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IHTMLDocument2, (void**)&doc);
    FUNC5(hres == S_OK, "CoCreateInstance failed: %08x\n", hres);
    if(FUNC1(hres))
        return NULL;

    hres = FUNC2(doc, &IID_IHTMLDocument5, (void**)&doc5);
    if(FUNC1(hres)) {
        FUNC6("Could not get IHTMLDocument5, probably too old IE\n");
        FUNC3(doc);
        return NULL;
    }

    FUNC4(doc5);
    return doc;
}