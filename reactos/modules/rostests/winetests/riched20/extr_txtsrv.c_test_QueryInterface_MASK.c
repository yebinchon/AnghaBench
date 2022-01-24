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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITextServices ;
typedef  int /*<<< orphan*/  ITextHost ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  IID_IRichEditOle ; 
 int /*<<< orphan*/  IID_ITextDocument ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 

__attribute__((used)) static void FUNC10(void)
{
    ITextServices *txtserv;
    ITextHost *host;
    HRESULT hres;
    IRichEditOle *reole, *txtsrv_reole;
    ITextDocument *txtdoc, *txtsrv_txtdoc;
    ULONG refcount;

    if(!FUNC8(&txtserv, &host))
        return;

    refcount = FUNC7((IUnknown *)txtserv);
    FUNC9(refcount == 1, "got wrong ref count: %d\n", refcount);

    /* IID_IRichEditOle */
    hres = FUNC5(txtserv, &IID_IRichEditOle, (void **)&txtsrv_reole);
    FUNC9(hres == S_OK, "ITextServices_QueryInterface: 0x%08x\n", hres);
    refcount = FUNC7((IUnknown *)txtserv);
    FUNC9(refcount == 2, "got wrong ref count: %d\n", refcount);
    refcount = FUNC7((IUnknown *)txtsrv_reole);
    FUNC9(refcount == 2, "got wrong ref count: %d\n", refcount);

    hres = FUNC0(txtsrv_reole, &IID_ITextDocument, (void **)&txtdoc);
    FUNC9(hres == S_OK, "IRichEditOle_QueryInterface: 0x%08x\n", hres);
    refcount = FUNC7((IUnknown *)txtserv);
    FUNC9(refcount == 3, "got wrong ref count: %d\n", refcount);
    refcount = FUNC7((IUnknown *)txtsrv_reole);
    FUNC9(refcount == 3, "got wrong ref count: %d\n", refcount);

    FUNC3(txtdoc);
    refcount = FUNC7((IUnknown *)txtserv);
    FUNC9(refcount == 2, "got wrong ref count: %d\n", refcount);
    FUNC1(txtsrv_reole);
    refcount = FUNC7((IUnknown *)txtserv);
    FUNC9(refcount == 1, "got wrong ref count: %d\n", refcount);

    /* IID_ITextDocument */
    hres = FUNC5(txtserv, &IID_ITextDocument, (void **)&txtsrv_txtdoc);
    FUNC9(hres == S_OK, "ITextServices_QueryInterface: 0x%08x\n", hres);
    refcount = FUNC7((IUnknown *)txtserv);
    FUNC9(refcount == 2, "got wrong ref count: %d\n", refcount);
    refcount = FUNC7((IUnknown *)txtsrv_txtdoc);
    FUNC9(refcount == 2, "got wrong ref count: %d\n", refcount);

    hres = FUNC2(txtsrv_txtdoc, &IID_IRichEditOle, (void **)&reole);
    FUNC9(hres == S_OK, "ITextDocument_QueryInterface: 0x%08x\n", hres);
    refcount = FUNC7((IUnknown *)txtserv);
    FUNC9(refcount == 3, "got wrong ref count: %d\n", refcount);
    refcount = FUNC7((IUnknown *)txtsrv_txtdoc);
    FUNC9(refcount == 3, "got wrong ref count: %d\n", refcount);

    FUNC1(reole);
    refcount = FUNC7((IUnknown *)txtserv);
    FUNC9(refcount == 2, "got wrong ref count: %d\n", refcount);
    FUNC3(txtsrv_txtdoc);
    refcount = FUNC7((IUnknown *)txtserv);
    FUNC9(refcount == 1, "got wrong ref count: %d\n", refcount);

    FUNC6(txtserv);
    FUNC4(host);
}