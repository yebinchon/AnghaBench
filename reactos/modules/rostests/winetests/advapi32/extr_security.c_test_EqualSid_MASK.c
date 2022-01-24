#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int Revision; } ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SID_IDENTIFIER_AUTHORITY ;
typedef  TYPE_2__ SID ;
typedef  int PSID ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  DOMAIN_ALIAS_RID_ADMINS ; 
 int ERROR_CALL_NOT_IMPLEMENTED ; 
 int ERROR_SUCCESS ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  SECURITY_BUILTIN_DOMAIN_RID ; 
 int /*<<< orphan*/  SECURITY_NT_AUTHORITY ; 
 int /*<<< orphan*/  SECURITY_WORLD_RID ; 
 int /*<<< orphan*/  SECURITY_WORLD_SID_AUTHORITY ; 
 int SID_REVISION ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    PSID sid1, sid2;
    BOOL ret;
    SID_IDENTIFIER_AUTHORITY SIDAuthWorld = { SECURITY_WORLD_SID_AUTHORITY };
    SID_IDENTIFIER_AUTHORITY SIDAuthNT = { SECURITY_NT_AUTHORITY };

    FUNC4(0xdeadbeef);
    ret = FUNC0(&SIDAuthNT, 2, SECURITY_BUILTIN_DOMAIN_RID,
        DOMAIN_ALIAS_RID_ADMINS, 0, 0, 0, 0, 0, 0, &sid1);
    if (!ret && FUNC3() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC8("AllocateAndInitializeSid is not implemented\n");
        return;
    }
    FUNC7(ret, "AllocateAndInitializeSid failed with error %d\n", FUNC3());
    FUNC7(FUNC3() == 0xdeadbeef,
       "AllocateAndInitializeSid shouldn't have set last error to %d\n",
       FUNC3());

    ret = FUNC0(&SIDAuthWorld, 1, SECURITY_WORLD_RID,
        0, 0, 0, 0, 0, 0, 0, &sid2);
    FUNC7(ret, "AllocateAndInitializeSid failed with error %d\n", FUNC3());

    FUNC4(0xdeadbeef);
    ret = FUNC1(sid1, sid2);
    FUNC7(!ret, "World and domain admins sids shouldn't have been equal\n");
    FUNC7(FUNC3() == ERROR_SUCCESS ||
       FUNC5(FUNC3() == 0xdeadbeef), /* NT4 */
       "EqualSid should have set last error to ERROR_SUCCESS instead of %d\n",
       FUNC3());

    FUNC4(0xdeadbeef);
    sid2 = FUNC2(sid2);
    FUNC7(!sid2, "FreeSid should have returned NULL instead of %p\n", sid2);
    FUNC7(FUNC3() == 0xdeadbeef,
       "FreeSid shouldn't have set last error to %d\n",
       FUNC3());

    ret = FUNC0(&SIDAuthNT, 2, SECURITY_BUILTIN_DOMAIN_RID,
        DOMAIN_ALIAS_RID_ADMINS, 0, 0, 0, 0, 0, 0, &sid2);
    FUNC7(ret, "AllocateAndInitializeSid failed with error %d\n", FUNC3());

    FUNC4(0xdeadbeef);
    ret = FUNC1(sid1, sid2);
    FUNC7(ret, "Same sids should have been equal %s != %s\n",
       FUNC6(sid1), FUNC6(sid2));
    FUNC7(FUNC3() == ERROR_SUCCESS ||
       FUNC5(FUNC3() == 0xdeadbeef), /* NT4 */
       "EqualSid should have set last error to ERROR_SUCCESS instead of %d\n",
       FUNC3());

    ((SID *)sid2)->Revision = 2;
    FUNC4(0xdeadbeef);
    ret = FUNC1(sid1, sid2);
    FUNC7(!ret, "EqualSid with invalid sid should have returned FALSE\n");
    FUNC7(FUNC3() == ERROR_SUCCESS ||
       FUNC5(FUNC3() == 0xdeadbeef), /* NT4 */
       "EqualSid should have set last error to ERROR_SUCCESS instead of %d\n",
       FUNC3());
    ((SID *)sid2)->Revision = SID_REVISION;

    FUNC2(sid1);
    FUNC2(sid2);
}