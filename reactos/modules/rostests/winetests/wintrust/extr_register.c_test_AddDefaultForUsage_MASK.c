#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_8__ {int cbStruct; char* pwszDllName; char* pwszLoadCallbackDataFunctionName; char* pwszFreeCallbackDataFunctionName; TYPE_2__* pgActionID; } ;
struct TYPE_6__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_7__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
typedef  TYPE_2__ GUID ;
typedef  TYPE_3__ CRYPT_PROVIDER_REGDEFUSAGE ;
typedef  char CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (char const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    BOOL ret;
    static GUID ActionID        = { 0xdeadbeef, 0xdead, 0xbeef, { 0xde,0xad,0xbe,0xef,0xde,0xad,0xbe,0xef }};
    static WCHAR DummyDllW[]    = {'d','e','a','d','b','e','e','f','.','d','l','l',0 };
    static CHAR DummyFunction[] = "dummyfunction";
    static const CHAR oid[]     = "1.2.3.4.5.6.7.8.9.10";
    static CRYPT_PROVIDER_REGDEFUSAGE DefUsage;

    if (!&pWintrustAddDefaultForUsage)
    {
        FUNC5("WintrustAddDefaultForUsage is not available\n");
        return;
    }

    /* All NULL */
    FUNC1(0xdeadbeef);
    ret = FUNC4(NULL, NULL);
    FUNC3 (!ret, "Expected WintrustAddDefaultForUsage to fail.\n");
    FUNC3 (FUNC0() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %u.\n", FUNC0());

    /* NULL defusage */
    FUNC1(0xdeadbeef);
    ret = FUNC4(oid, NULL);
    FUNC3 (!ret, "Expected WintrustAddDefaultForUsage to fail.\n");
    FUNC3 (FUNC0() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %u.\n", FUNC0());

    /* NULL oid and proper defusage */
    FUNC2(&DefUsage, 0 , sizeof(CRYPT_PROVIDER_REGDEFUSAGE));
    DefUsage.cbStruct = sizeof(CRYPT_PROVIDER_REGDEFUSAGE);
    DefUsage.pgActionID = &ActionID;
    DefUsage.pwszDllName = DummyDllW;
    DefUsage.pwszLoadCallbackDataFunctionName = DummyFunction;
    DefUsage.pwszFreeCallbackDataFunctionName = DummyFunction;
    FUNC1(0xdeadbeef);
    ret = FUNC4(NULL, &DefUsage);
    FUNC3 (!ret, "Expected WintrustAddDefaultForUsage to fail.\n");
    FUNC3 (FUNC0() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %u.\n", FUNC0());

    /* cbStruct set to 0 */
    FUNC2(&DefUsage, 0 , sizeof(CRYPT_PROVIDER_REGDEFUSAGE));
    DefUsage.cbStruct = 0;
    DefUsage.pgActionID = &ActionID;
    DefUsage.pwszDllName = DummyDllW;
    DefUsage.pwszLoadCallbackDataFunctionName = DummyFunction;
    DefUsage.pwszFreeCallbackDataFunctionName = DummyFunction;
    FUNC1(0xdeadbeef);
    ret = FUNC4(oid, &DefUsage);
    FUNC3 (!ret, "Expected WintrustAddDefaultForUsage to fail.\n");
    FUNC3 (FUNC0() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_INVALID_PARAMETER, got %u.\n", FUNC0());
}