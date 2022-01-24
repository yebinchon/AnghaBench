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
typedef  int /*<<< orphan*/  IInternetSession ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_AboutProtocol ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
    IInternetSession *session;
    IClassFactory *factory;
    HRESULT hres;

    static const WCHAR wszAbout[] = {'a','b','o','u','t',0};

    hres = FUNC6(0, &session, 0);
    FUNC5(hres == S_OK, "CoInternetGetSession failed: %08x\n", hres);
    if(FUNC1(hres))
        return;

    hres = FUNC0(&CLSID_AboutProtocol, CLSCTX_INPROC_SERVER, NULL,
            &IID_IClassFactory, (void**)&factory);
    FUNC5(hres == S_OK, "Could not get AboutProtocol factory: %08x\n", hres);
    if(FUNC1(hres))
        return;

    FUNC3(session, factory, &CLSID_AboutProtocol,
                                       wszAbout, 0, NULL, 0);
    FUNC2(factory);

    FUNC4(session);
}