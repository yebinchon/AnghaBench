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
struct TYPE_3__ {char* Buffer; int /*<<< orphan*/  base; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ ulonglong2str_t ;
typedef  char* LPSTR ;

/* Variables and functions */
 int LARGE_STRI_BUFFER_LENGTH ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(int test_num, const ulonglong2str_t *ulonglong2str)
{
    LPSTR result;
    char dest_str[LARGE_STRI_BUFFER_LENGTH + 1];

    FUNC1(dest_str, '-', LARGE_STRI_BUFFER_LENGTH);
    dest_str[LARGE_STRI_BUFFER_LENGTH] = '\0';
    result = FUNC3(ulonglong2str->value, dest_str, ulonglong2str->base);
    FUNC2(result == dest_str,
       "(test %d): _ui64toa(%s, [out], %d) has result %p, expected: %p\n",
       test_num, FUNC4(ulonglong2str->value), ulonglong2str->base, result, dest_str);
    FUNC2(FUNC0(dest_str, ulonglong2str->Buffer, LARGE_STRI_BUFFER_LENGTH) == 0,
       "(test %d): _ui64toa(%s, [out], %d) assigns string \"%s\", expected: \"%s\"\n",
       test_num, FUNC4(ulonglong2str->value),
       ulonglong2str->base, dest_str, ulonglong2str->Buffer);
}