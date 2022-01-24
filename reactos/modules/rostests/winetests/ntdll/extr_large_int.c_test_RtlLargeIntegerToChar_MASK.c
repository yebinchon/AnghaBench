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
typedef  int /*<<< orphan*/  ULONGLONG ;
struct TYPE_3__ {int base; int /*<<< orphan*/  MaximumLength; int /*<<< orphan*/  value; } ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int NB_LARGEINT2STR ; 
 scalar_t__ STATUS_ACCESS_VIOLATION ; 
 scalar_t__ STATUS_BUFFER_OVERFLOW ; 
 scalar_t__ STATUS_INVALID_PARAMETER ; 
 TYPE_1__* largeint2str ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
    NTSTATUS result;
    int test_num;
    ULONGLONG value;

    for (test_num = 0; test_num < NB_LARGEINT2STR; test_num++) {
	FUNC1(test_num, &largeint2str[test_num]);
    } /* for */

    value = largeint2str[0].value;
    result = FUNC2(&value, 20, largeint2str[0].MaximumLength, NULL);
    FUNC0(result == STATUS_INVALID_PARAMETER,
       "(test a): RtlLargeIntegerToChar(0x%s, %d, %d, NULL) has result %x, expected: %x\n",
       FUNC3(largeint2str[0].value), 20,
       largeint2str[0].MaximumLength, result, STATUS_INVALID_PARAMETER);

    result = FUNC2(&value, 20, 0, NULL);
    FUNC0(result == STATUS_INVALID_PARAMETER,
       "(test b): RtlLargeIntegerToChar(0x%s, %d, %d, NULL) has result %x, expected: %x\n",
       FUNC3(largeint2str[0].value), 20,
       largeint2str[0].MaximumLength, result, STATUS_INVALID_PARAMETER);

    result = FUNC2(&value, largeint2str[0].base, 0, NULL);
    FUNC0(result == STATUS_BUFFER_OVERFLOW,
       "(test c): RtlLargeIntegerToChar(0x%s, %d, %d, NULL) has result %x, expected: %x\n",
       FUNC3(largeint2str[0].value), largeint2str[0].base, 0, result, STATUS_BUFFER_OVERFLOW);

    result = FUNC2(&value, largeint2str[0].base, largeint2str[0].MaximumLength, NULL);
    FUNC0(result == STATUS_ACCESS_VIOLATION,
       "(test d): RtlLargeIntegerToChar(0x%s, %d, %d, NULL) has result %x, expected: %x\n",
       FUNC3(largeint2str[0].value),
       largeint2str[0].base, largeint2str[0].MaximumLength, result, STATUS_ACCESS_VIOLATION);
}