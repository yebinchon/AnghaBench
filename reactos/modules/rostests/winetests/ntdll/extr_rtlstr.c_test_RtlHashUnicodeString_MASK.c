#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hash_unicodestring_test {char const* str; int hash; int /*<<< orphan*/  case_insensitive; } ;
typedef  int /*<<< orphan*/  strW ;
typedef  char WCHAR ;
struct TYPE_4__ {int Length; int MaximumLength; scalar_t__ Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int ULONG ;
typedef  scalar_t__ PWSTR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HASH_STRING_ALGORITHM_INVALID ; 
 int /*<<< orphan*/  HASH_STRING_ALGORITHM_X65599 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 struct hash_unicodestring_test* hash_test ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(void)
{
    static const WCHAR strW[] = {'T','e','s','t',0,'1',0};
    const struct hash_unicodestring_test *ptr;
    UNICODE_STRING str;
    NTSTATUS status;
    ULONG hash;

    if (!&pRtlHashUnicodeString)
    {
        FUNC3("RtlHashUnicodeString is not available\n");
        return;
    }

    status = FUNC2(NULL, FALSE, HASH_STRING_ALGORITHM_X65599, &hash);
    FUNC1(status == STATUS_INVALID_PARAMETER, "got status 0x%08x\n", status);

    FUNC0(&str, strW);
    status = FUNC2(&str, FALSE, HASH_STRING_ALGORITHM_X65599, NULL);
    FUNC1(status == STATUS_INVALID_PARAMETER, "got status 0x%08x\n", status);

    status = FUNC2(&str, FALSE, HASH_STRING_ALGORITHM_INVALID, &hash);
    FUNC1(status == STATUS_INVALID_PARAMETER, "got status 0x%08x\n", status);

    /* embedded null */
    str.Buffer = (PWSTR)strW;
    str.Length = sizeof(strW) - sizeof(WCHAR);
    str.MaximumLength = sizeof(strW);
    status = FUNC2(&str, FALSE, HASH_STRING_ALGORITHM_X65599, &hash);
    FUNC1(status == STATUS_SUCCESS, "got status 0x%08x\n", status);
    FUNC1(hash == 0x32803083, "got 0x%08x\n", hash);

    ptr = hash_test;
    while (*ptr->str)
    {
        FUNC0(&str, ptr->str);
        hash = 0;
        status = FUNC2(&str, ptr->case_insensitive, HASH_STRING_ALGORITHM_X65599, &hash);
        FUNC1(status == STATUS_SUCCESS, "got status 0x%08x for %s\n", status, FUNC4(ptr->str));
        FUNC1(hash == ptr->hash, "got wrong hash 0x%08x, expected 0x%08x, for %s, mode %d\n", hash, ptr->hash,
            FUNC4(ptr->str), ptr->case_insensitive);

        ptr++;
    }
}