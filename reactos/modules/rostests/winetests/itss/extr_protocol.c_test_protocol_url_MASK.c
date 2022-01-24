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
typedef  int /*<<< orphan*/  buf ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IInternetProtocol ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int E_FAIL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IInternetProtocol ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int INET_E_DATA_NOT_AVAILABLE ; 
 scalar_t__ ITS_PROTOCOL ; 
 int S_FALSE ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * read_protocol ; 
 scalar_t__ test_protocol ; 

__attribute__((used)) static void FUNC10(IClassFactory *factory, LPCWSTR url, BOOL expect_mime)
{
    IInternetProtocol *protocol;
    BYTE buf[512];
    ULONG cb, ref;
    HRESULT hres;

    hres = FUNC1(factory, NULL, &IID_IInternetProtocol, (void**)&protocol);
    FUNC8(hres == S_OK, "Could not get IInternetProtocol: %08x\n", hres);
    if(FUNC0(hres))
        return;

    hres = FUNC9(protocol, url, expect_mime);
    if(FUNC0(hres)) {
        FUNC4(protocol);
        return;
    }

    hres = FUNC3(protocol, buf, sizeof(buf), &cb);
    FUNC8(hres == S_OK, "Read failed: %08x\n", hres);
    FUNC8(cb == 13, "cb=%u expected 13\n", cb);
    FUNC8(!FUNC7(buf, "<html></html>", 13), "unexpected data\n");
    ref = FUNC4(protocol);
    FUNC8(!ref, "protocol ref=%d\n", ref);

    hres = FUNC1(factory, NULL, &IID_IInternetProtocol, (void**)&protocol);
    FUNC8(hres == S_OK, "Could not get IInternetProtocol: %08x\n", hres);
    if(FUNC0(hres))
        return;

    cb = 0xdeadbeef;
    hres = FUNC3(protocol, buf, sizeof(buf), &cb);
    FUNC8(hres == (test_protocol == ITS_PROTOCOL ? INET_E_DATA_NOT_AVAILABLE : E_FAIL),
       "Read returned %08x\n", hres);
    FUNC8(cb == 0xdeadbeef, "cb=%u expected 0xdeadbeef\n", cb);

    FUNC9(protocol, url, expect_mime);
    hres = FUNC3(protocol, buf, 2, &cb);
    FUNC8(hres == S_OK, "Read failed: %08x\n", hres);
    FUNC8(cb == 2, "cb=%u expected 2\n", cb);
    hres = FUNC3(protocol, buf, sizeof(buf), &cb);
    FUNC8(hres == S_OK, "Read failed: %08x\n", hres);
    FUNC8(cb == 11, "cb=%u, expected 11\n", cb);
    hres = FUNC3(protocol, buf, sizeof(buf), &cb);
    FUNC8(hres == S_FALSE, "Read failed: %08x expected S_FALSE\n", hres);
    FUNC8(cb == 0, "cb=%u expected 0\n", cb);
    hres = FUNC6(protocol);
    FUNC8(hres == S_OK, "UnlockRequest failed: %08x\n", hres);
    ref = FUNC4(protocol);
    FUNC8(!ref, "protocol ref=%d\n", ref);

    hres = FUNC1(factory, NULL, &IID_IInternetProtocol, (void**)&protocol);
    FUNC8(hres == S_OK, "Could not get IInternetProtocol: %08x\n", hres);
    if(FUNC0(hres))
        return;

    FUNC9(protocol, url, expect_mime);
    hres = FUNC3(protocol, buf, 2, &cb);
    FUNC8(hres == S_OK, "Read failed: %08x\n", hres);
    hres = FUNC2(protocol, 0);
    FUNC8(hres == S_OK, "LockRequest failed: %08x\n", hres);
    hres = FUNC6(protocol);
    FUNC8(hres == S_OK, "UnlockRequest failed: %08x\n", hres);
    hres = FUNC3(protocol, buf, sizeof(buf), &cb);
    FUNC8(hres == S_OK, "Read failed: %08x\n", hres);
    FUNC8(cb == 11, "cb=%u, expected 11\n", cb);
    ref = FUNC4(protocol);
    FUNC8(!ref, "protocol ref=%d\n", ref);

    hres = FUNC1(factory, NULL, &IID_IInternetProtocol, (void**)&protocol);
    FUNC8(hres == S_OK, "Could not get IInternetProtocol: %08x\n", hres);
    if(FUNC0(hres))
        return;

    FUNC9(protocol, url, expect_mime);
    hres = FUNC2(protocol, 0);
    FUNC8(hres == S_OK, "LockRequest failed: %08x\n", hres);
    hres = FUNC5(protocol, 0);
    FUNC8(hres == S_OK, "Terminate failed: %08x\n", hres);
    hres = FUNC3(protocol, buf, 2, &cb);
    FUNC8(hres == S_OK, "Read failed: %08x\n", hres);
    FUNC8(cb == 2, "cb=%u, expected 2\n", cb);
    hres = FUNC6(protocol);
    FUNC8(hres == S_OK, "UnlockRequest failed: %08x\n", hres);
    hres = FUNC3(protocol, buf, 2, &cb);
    FUNC8(hres == S_OK, "Read failed: %08x\n", hres);
    FUNC8(cb == 2, "cb=%u, expected 2\n", cb);
    hres = FUNC5(protocol, 0);
    FUNC8(hres == S_OK, "Terminate failed: %08x\n", hres);
    hres = FUNC3(protocol, buf, 2, &cb);
    FUNC8(hres == S_OK, "Read failed: %08x\n", hres);
    FUNC8(cb == 2, "cb=%u expected 2\n", cb);
    ref = FUNC4(protocol);
    FUNC8(!ref, "protocol ref=%d\n", ref);

    hres = FUNC1(factory, NULL, &IID_IInternetProtocol, (void**)&read_protocol);
    FUNC8(hres == S_OK, "Could not get IInternetProtocol: %08x\n", hres);
    if(FUNC0(hres))
        return;

    FUNC9(read_protocol, url, expect_mime);
    ref = FUNC4(read_protocol);
    FUNC8(!ref, "protocol ref=%d\n", ref);
    read_protocol = NULL;
}