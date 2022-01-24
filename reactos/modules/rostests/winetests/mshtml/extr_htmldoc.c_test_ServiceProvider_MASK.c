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
typedef  int /*<<< orphan*/  IServiceProvider ;
typedef  int /*<<< orphan*/  IHTMLDocument3 ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IHTMLDocument2 ; 
 int /*<<< orphan*/  IID_IHTMLDocument3 ; 
 int /*<<< orphan*/  IID_IHTMLEditServices ; 
 int /*<<< orphan*/  IID_IServiceProvider ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SID_SContainerDispatch ; 
 int /*<<< orphan*/  SID_SHTMLEditServices ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void)
{
    IHTMLDocument3 *doc3, *doc3_2;
    IServiceProvider *provider;
    IHTMLDocument2 *doc, *doc2;
    IUnknown *unk;
    HRESULT hres;

    doc = FUNC6();
    if(!doc)
        return;

    hres = FUNC0(doc, &IID_IServiceProvider, (void**)&provider);
    FUNC8(hres == S_OK, "got 0x%08x\n", hres);

    hres = FUNC3(provider, &SID_SContainerDispatch, &IID_IHTMLDocument2, (void**)&doc2);
    FUNC8(hres == S_OK, "got 0x%08x\n", hres);
    FUNC8(FUNC7((IUnknown*)doc2, (IUnknown*)doc), "got wrong pointer\n");
    FUNC1(doc2);

    hres = FUNC3(provider, &SID_SContainerDispatch, &IID_IHTMLDocument3, (void**)&doc3);
    FUNC8(hres == S_OK, "got 0x%08x\n", hres);
    FUNC8(FUNC7((IUnknown*)doc3, (IUnknown*)doc), "got wrong pointer\n");

    hres = FUNC0(doc, &IID_IHTMLDocument3, (void**)&doc3_2);
    FUNC8(hres == S_OK, "got 0x%08x\n", hres);
    FUNC8(FUNC7((IUnknown*)doc3_2, (IUnknown*)doc), "got wrong pointer\n");
    FUNC8(FUNC7((IUnknown*)doc3_2, (IUnknown*)doc3), "got wrong pointer\n");
    FUNC2(doc3);
    FUNC2(doc3_2);

    hres = FUNC3(provider, &SID_SContainerDispatch, &IID_IUnknown, (void**)&unk);
    FUNC8(hres == S_OK, "got 0x%08x\n", hres);
    FUNC8(FUNC7((IUnknown*)doc, unk), "got wrong pointer\n");
    FUNC5(unk);

    hres = FUNC3(provider, &SID_SHTMLEditServices, &IID_IHTMLEditServices, (void**)&unk);
    FUNC8(hres == S_OK, "QueryService(HTMLEditServices) failed: %08x\n", hres);
    FUNC5(unk);

    FUNC4(provider);
    FUNC9(doc);
}