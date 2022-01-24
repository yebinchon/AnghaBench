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
typedef  int /*<<< orphan*/  IPersistStreamInit ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IPersistStreamInit ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  resetting_document ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(IHTMLDocument2 *doc)
{
    IPersistStreamInit *init;
    HRESULT hres;

    hres = FUNC1(doc, &IID_IPersistStreamInit, (void**)&init);
    FUNC4(hres == S_OK, "QueryInterface(IID_IPersistStreamInit) failed: %08x\n", hres);
    if(FUNC0(hres))
        return;

    resetting_document = TRUE;

    hres = FUNC2(init);
    FUNC4(hres == S_OK, "Load failed: %08x\n", hres);

    resetting_document = FALSE;

    FUNC5((IUnknown*)doc, NULL, "about:blank", FALSE);

    FUNC3(init);
}