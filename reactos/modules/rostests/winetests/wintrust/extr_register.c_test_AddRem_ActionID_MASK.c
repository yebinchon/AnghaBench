#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_10__ {int cbStruct; void* sCleanupProvider; void* sTestPolicyProvider; void* sFinalPolicyProvider; void* sCertificatePolicyProvider; void* sCertificateProvider; void* sSignatureProvider; void* sObjectProvider; void* sInitProvider; } ;
struct TYPE_8__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_9__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
typedef  TYPE_2__ GUID ;
typedef  void* CRYPT_TRUST_REG_ENTRY ;
typedef  TYPE_3__ CRYPT_REGISTER_ACTIONID ;
typedef  int BOOL ;

/* Variables and functions */
 int ERROR_ACCESS_DENIED ; 
 int ERROR_INVALID_PARAMETER ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    static WCHAR DummyDllW[]      = {'d','e','a','d','b','e','e','f','.','d','l','l',0 };
    static WCHAR DummyFunctionW[] = {'d','u','m','m','y','f','u','n','c','t','i','o','n',0 };
    GUID ActionID = { 0xdeadbeef, 0xdead, 0xbeef, { 0xde,0xad,0xbe,0xef,0xde,0xad,0xbe,0xef }};
    CRYPT_REGISTER_ACTIONID ActionIDFunctions;
    CRYPT_TRUST_REG_ENTRY EmptyProvider = { 0, NULL, NULL };
    CRYPT_TRUST_REG_ENTRY DummyProvider = { sizeof(CRYPT_TRUST_REG_ENTRY), DummyDllW, DummyFunctionW };
    BOOL ret;

    if (!&pWintrustAddActionID || !&pWintrustRemoveActionID)
    {
        FUNC6("WintrustAddActionID and/or WintrustRemoveActionID are not available\n");
        return;
    }

    /* All NULL */
    FUNC1(0xdeadbeef);
    ret = FUNC4(NULL, 0, NULL);
    FUNC3 (!ret, "Expected WintrustAddActionID to fail.\n");
    FUNC3 (FUNC0() == ERROR_INVALID_PARAMETER /* XP/W2K3 */ ||
        FUNC0() == 0xdeadbeef              /* Win98/NT4/W2K */,
        "Expected ERROR_INVALID_PARAMETER(W2K3) or 0xdeadbeef(Win98/NT4/W2K), got %u.\n", FUNC0());

    /* NULL functions */
    FUNC1(0xdeadbeef);
    ret = FUNC4(&ActionID, 0, NULL);
    FUNC3 (!ret, "Expected WintrustAddActionID to fail.\n");
    FUNC3 (FUNC0() == ERROR_INVALID_PARAMETER /* XP/W2K3 */ ||
        FUNC0() == 0xdeadbeef              /* Win98/NT4/W2K */,
        "Expected ERROR_INVALID_PARAMETER(W2K3) or 0xdeadbeef(Win98/NT4/W2K), got %u.\n", FUNC0());

    /* All OK (although no functions defined), except cbStruct is not set in ActionIDFunctions */
    FUNC1(0xdeadbeef);
    FUNC2(&ActionIDFunctions, 0, sizeof(CRYPT_REGISTER_ACTIONID));
    ret = FUNC4(&ActionID, 0, &ActionIDFunctions);
    FUNC3 (!ret, "Expected WintrustAddActionID to fail.\n");
    FUNC3 (FUNC0() == ERROR_INVALID_PARAMETER /* XP/W2K3 */ ||
        FUNC0() == 0xdeadbeef              /* Win98/NT4/W2K */,
        "Expected ERROR_INVALID_PARAMETER(W2K3) or 0xdeadbeef(Win98/NT4/W2K), got %u.\n", FUNC0());

    /* All OK (although no functions defined) and cbStruct is set now */
    FUNC1(0xdeadbeef);
    FUNC2(&ActionIDFunctions, 0, sizeof(CRYPT_REGISTER_ACTIONID));
    ActionIDFunctions.cbStruct = sizeof(CRYPT_REGISTER_ACTIONID);
    ret = FUNC4(&ActionID, 0, &ActionIDFunctions);
    FUNC3 (ret, "Expected WintrustAddActionID to succeed.\n");
    FUNC3 (FUNC0() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %u.\n", FUNC0());

    /* All OK and all (but 1) functions are correctly defined. The DLL and entrypoints
     * are not present.
     */
    FUNC2(&ActionIDFunctions, 0, sizeof(CRYPT_REGISTER_ACTIONID));
    ActionIDFunctions.cbStruct = sizeof(CRYPT_REGISTER_ACTIONID);
    ActionIDFunctions.sInitProvider = DummyProvider;
    ActionIDFunctions.sObjectProvider = DummyProvider;
    ActionIDFunctions.sSignatureProvider = EmptyProvider;
    ActionIDFunctions.sCertificateProvider = DummyProvider;
    ActionIDFunctions.sCertificatePolicyProvider = DummyProvider;
    ActionIDFunctions.sFinalPolicyProvider = DummyProvider;
    ActionIDFunctions.sTestPolicyProvider = DummyProvider;
    ActionIDFunctions.sCleanupProvider = DummyProvider;
    FUNC1(0xdeadbeef);
    ret = FUNC4(&ActionID, 0, &ActionIDFunctions);
    FUNC3 (ret, "Expected WintrustAddActionID to succeed.\n");
    FUNC3 (FUNC0() == ERROR_INVALID_PARAMETER ||
        FUNC0() == ERROR_ACCESS_DENIED,
        "Expected ERROR_INVALID_PARAMETER or ERROR_ACCESS_DENIED, got %u.\n",
        FUNC0());

    /* All OK and all functions are correctly defined. The DLL and entrypoints
     * are not present.
     */
    FUNC2(&ActionIDFunctions, 0, sizeof(CRYPT_REGISTER_ACTIONID));
    ActionIDFunctions.cbStruct = sizeof(CRYPT_REGISTER_ACTIONID);
    ActionIDFunctions.sInitProvider = DummyProvider;
    ActionIDFunctions.sObjectProvider = DummyProvider;
    ActionIDFunctions.sSignatureProvider = DummyProvider;
    ActionIDFunctions.sCertificateProvider = DummyProvider;
    ActionIDFunctions.sCertificatePolicyProvider = DummyProvider;
    ActionIDFunctions.sFinalPolicyProvider = DummyProvider;
    ActionIDFunctions.sTestPolicyProvider = DummyProvider;
    ActionIDFunctions.sCleanupProvider = DummyProvider;
    FUNC1(0xdeadbeef);
    ret = FUNC4(&ActionID, 0, &ActionIDFunctions);
    FUNC3 (ret, "Expected WintrustAddActionID to succeed.\n");
    FUNC3 (FUNC0() == 0xdeadbeef || FUNC0() == ERROR_ACCESS_DENIED,
        "Expected 0xdeadbeef or ERROR_ACCESS_DENIED, got %u.\n",
        FUNC0());

    FUNC1(0xdeadbeef);
    ret = FUNC5(&ActionID);
    FUNC3 ( ret, "WintrustRemoveActionID failed : %d\n", FUNC0());
    FUNC3 ( FUNC0() == 0xdeadbeef, "Last error should not have been changed: %u\n", FUNC0());

    /* NULL input */
    FUNC1(0xdeadbeef);
    ret = FUNC5(NULL);
    FUNC3 (ret, "Expected WintrustRemoveActionID to succeed.\n");
    FUNC3 (FUNC0() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %u.\n", FUNC0());

    /* The passed GUID is removed by a previous call, so it's basically a test with a nonexistent Trust provider */ 
    FUNC1(0xdeadbeef);
    ret = FUNC5(&ActionID);
    FUNC3 (ret, "Expected WintrustRemoveActionID to succeed.\n");
    FUNC3 (FUNC0() == 0xdeadbeef,
        "Expected 0xdeadbeef, got %u.\n", FUNC0());
}