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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/ * PSID_IDENTIFIER_AUTHORITY ;
typedef  int /*<<< orphan*/ ***** PSID ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *****) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *****) ; 
 int SECURITY_MAX_SID_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  pGetSidIdentifierAuthority ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    char buffer[SECURITY_MAX_SID_SIZE];
    PSID authority_sid = *(PSID *)buffer;
    PSID_IDENTIFIER_AUTHORITY id;
    BOOL ret;

    if (!pGetSidIdentifierAuthority)
    {
        FUNC6("GetSidIdentifierAuthority not available\n");
        return;
    }

    FUNC4(buffer, 0xcc, sizeof(buffer));
    ret = FUNC2(authority_sid);
    FUNC5(!ret, "expected FALSE, got %u\n", ret);

    FUNC3(0xdeadbeef);
    id = FUNC1(authority_sid);
    FUNC5(id != NULL, "got NULL pointer as identifier authority\n");
    FUNC5(FUNC0() == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", FUNC0());

    FUNC3(0xdeadbeef);
    id = FUNC1(NULL);
    FUNC5(id != NULL, "got NULL pointer as identifier authority\n");
    FUNC5(FUNC0() == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", FUNC0());
}