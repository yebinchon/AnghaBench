#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cbSize; int dwGroupId; } ;
typedef  TYPE_1__* PCCRYPT_OID_INFO ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  CRYPT_OID_INFO ;
typedef  int BOOL ;

/* Variables and functions */
 int CRYPT_ENHKEY_USAGE_OID_GROUP_ID ; 
 int ERROR_INVALID_PARAMETER ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 (int,TYPE_1__***) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    BOOL ret;
    PCCRYPT_OID_INFO *usages;

    if (!&pWTHelperGetKnownUsages)
    {
        FUNC4("missing WTHelperGetKnownUsages\n");
        return;
    }
    FUNC1(0xdeadbeef);
    ret = FUNC3(0, NULL);
    FUNC2(!ret && FUNC0() == ERROR_INVALID_PARAMETER,
     "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC0());
    FUNC1(0xdeadbeef);
    ret = FUNC3(1, NULL);
    FUNC2(!ret && FUNC0() == ERROR_INVALID_PARAMETER,
     "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC0());
    FUNC1(0xdeadbeef);
    ret = FUNC3(0, &usages);
    FUNC2(!ret && FUNC0() == ERROR_INVALID_PARAMETER,
     "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC0());
    /* A value of 1 for the first parameter seems to imply the value is
     * allocated
     */
    FUNC1(0xdeadbeef);
    usages = NULL;
    ret = FUNC3(1, &usages);
    FUNC2(ret, "WTHelperGetKnownUsages failed: %d\n", FUNC0());
    FUNC2(usages != NULL, "expected a pointer\n");
    if (ret && usages)
    {
        PCCRYPT_OID_INFO *ptr;

        /* The returned usages are an array of PCCRYPT_OID_INFOs, terminated with a
         * NULL pointer.
         */
        for (ptr = usages; *ptr; ptr++)
        {
            FUNC2((*ptr)->cbSize == sizeof(CRYPT_OID_INFO) ||
             (*ptr)->cbSize == (sizeof(CRYPT_OID_INFO) + 2 * sizeof(LPCWSTR)), /* Vista */
             "unexpected size %d\n", (*ptr)->cbSize);
            /* Each returned usage is in the CRYPT_ENHKEY_USAGE_OID_GROUP_ID group */
            FUNC2((*ptr)->dwGroupId == CRYPT_ENHKEY_USAGE_OID_GROUP_ID,
             "expected group CRYPT_ENHKEY_USAGE_OID_GROUP_ID, got %d\n",
             (*ptr)->dwGroupId);
        }
    }
    /* A value of 2 for the second parameter seems to imply the value is freed
     */
    FUNC1(0xdeadbeef);
    ret = FUNC3(2, &usages);
    FUNC2(ret, "WTHelperGetKnownUsages failed: %d\n", FUNC0());
    FUNC2(usages == NULL, "expected pointer to be cleared\n");
    FUNC1(0xdeadbeef);
    usages = NULL;
    ret = FUNC3(2, &usages);
    FUNC2(ret, "WTHelperGetKnownUsages failed: %d\n", FUNC0());
    FUNC1(0xdeadbeef);
    ret = FUNC3(2, NULL);
    FUNC2(!ret && FUNC0() == ERROR_INVALID_PARAMETER,
     "expected ERROR_INVALID_PARAMETER, got %d\n", FUNC0());
}