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
typedef  int /*<<< orphan*/  test_html ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  blank_html ;
typedef  int WCHAR ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IInternetProtocol ;
typedef  int /*<<< orphan*/  IInternetPriority ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int E_NOINTERFACE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IInternetPriority ; 
 int /*<<< orphan*/  IID_IInternetProtocol ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  about_blank_url ; 
 int /*<<< orphan*/  about_res_url ; 
 int /*<<< orphan*/  about_test_url ; 
 int /*<<< orphan*/  bindf ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(IClassFactory *factory, DWORD bf)
{
    IInternetProtocol *protocol;
    IInternetPriority *priority;
    BYTE buf[512];
    ULONG cb;
    HRESULT hres;

    static const WCHAR blank_html[] = {0xfeff,'<','H','T','M','L','>','<','/','H','T','M','L','>',0};
    static const WCHAR test_html[] =
        {0xfeff,'<','H','T','M','L','>','t','e','s','t','<','/','H','T','M','L','>',0};

    bindf = bf;

    hres = FUNC1(factory, NULL, &IID_IInternetProtocol, (void**)&protocol);
    FUNC8(hres == S_OK, "Could not get IInternetProtocol: %08x\n", hres);
    if(FUNC0(hres))
        return;

    hres = FUNC3(protocol, &IID_IInternetPriority, (void**)&priority);
    FUNC8(hres == E_NOINTERFACE,
       "QueryInterface(IInternetPriority) returned %08x, expected E_NOINTEFACE\n", hres);

    FUNC9(protocol, about_blank_url);
    hres = FUNC2(protocol, 0);
    FUNC8(hres == S_OK, "LockRequest failed: %08x\n", hres);
    hres = FUNC4(protocol, buf, sizeof(buf), &cb);
    FUNC8(hres == S_OK, "Read failed: %08x\n", hres);
    FUNC8(cb == sizeof(blank_html), "cb=%d\n", cb);
    FUNC8(!FUNC7(buf, blank_html, cb), "Readed wrong data\n");
    hres = FUNC6(protocol);
    FUNC8(hres == S_OK, "UnlockRequest failed: %08x\n", hres);

    FUNC9(protocol, about_test_url);
    hres = FUNC2(protocol, 0);
    FUNC8(hres == S_OK, "LockRequest failed: %08x\n", hres);
    hres = FUNC4(protocol, buf, sizeof(buf), &cb);
    FUNC8(hres == S_OK, "Read failed: %08x\n", hres);
    FUNC8(cb == sizeof(test_html), "cb=%d\n", cb);
    FUNC8(!FUNC7(buf, test_html, cb), "Readed wrong data\n");
    hres = FUNC6(protocol);
    FUNC8(hres == S_OK, "UnlockRequest failed: %08x\n", hres);

    FUNC9(protocol, about_res_url);
    hres = FUNC2(protocol, 0);
    FUNC8(hres == S_OK, "LockRequest failed: %08x\n", hres);
    hres = FUNC4(protocol, buf, sizeof(buf), &cb);
    FUNC8(hres == S_OK, "Read failed: %08x\n", hres);
    FUNC8(cb == sizeof(blank_html), "cb=%d\n", cb);
    FUNC8(!FUNC7(buf, blank_html, cb), "Readed wrong data\n");
    hres = FUNC6(protocol);
    FUNC8(hres == S_OK, "UnlockRequest failed: %08x\n", hres);

    FUNC5(protocol);
}