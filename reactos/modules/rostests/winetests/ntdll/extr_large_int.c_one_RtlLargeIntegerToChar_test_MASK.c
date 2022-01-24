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
struct TYPE_3__ {int value; int base; char* result; char* Buffer; int /*<<< orphan*/  MaximumLength; } ;
typedef  TYPE_1__ largeint2str_t ;
typedef  int ULONGLONG ;
typedef  char* NTSTATUS ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int LARGE_STRI_BUFFER_LENGTH ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC3 (int*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(int test_num, const largeint2str_t *largeint2str)
{
    NTSTATUS result;
    char dest_str[LARGE_STRI_BUFFER_LENGTH + 1];
    ULONGLONG value;

#ifdef _WIN64
    if (largeint2str->value >> 32 == 0xffffffff)  /* this crashes on 64-bit Vista */
    {
        skip( "Value ffffffff%08x broken on 64-bit windows\n", (DWORD)largeint2str->value );
        return;
    }
#endif

    FUNC1(dest_str, '-', LARGE_STRI_BUFFER_LENGTH);
    dest_str[LARGE_STRI_BUFFER_LENGTH] = '\0';
    value = largeint2str->value;
    if (largeint2str->base == 0) {
	result = FUNC3(&value, 10, largeint2str->MaximumLength, dest_str);
    } else {
	result = FUNC3(&value, largeint2str->base, largeint2str->MaximumLength, dest_str);
    } /* if */
    FUNC2(result == largeint2str->result,
       "(test %d): RtlLargeIntegerToChar(0x%s, %d, %d, [out]) has result %x, expected: %x\n",
       test_num, FUNC5(largeint2str->value), largeint2str->base,
       largeint2str->MaximumLength, result, largeint2str->result);
    FUNC2(FUNC0(dest_str, largeint2str->Buffer, LARGE_STRI_BUFFER_LENGTH) == 0,
       "(test %d): RtlLargeIntegerToChar(0x%s, %d, %d, [out]) assigns string \"%s\", expected: \"%s\"\n",
       test_num, FUNC5(largeint2str->value), largeint2str->base,
       largeint2str->MaximumLength, dest_str, largeint2str->Buffer);
}