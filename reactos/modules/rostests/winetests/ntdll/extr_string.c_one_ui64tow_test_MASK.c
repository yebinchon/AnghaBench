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
struct TYPE_8__ {char* Buffer; int /*<<< orphan*/  base; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ ulonglong2str_t ;
typedef  char WCHAR ;
struct TYPE_9__ {int Length; int MaximumLength; char* Buffer; } ;
typedef  TYPE_2__ UNICODE_STRING ;
struct TYPE_10__ {char* Buffer; } ;
typedef  TYPE_3__ STRING ;
typedef  char* LPWSTR ;

/* Variables and functions */
 int LARGE_STRI_BUFFER_LENGTH ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(int test_num, const ulonglong2str_t *ulonglong2str)
{
    int pos;
    WCHAR expected_wstr[LARGE_STRI_BUFFER_LENGTH + 1];
    WCHAR dest_wstr[LARGE_STRI_BUFFER_LENGTH + 1];
    UNICODE_STRING unicode_string;
    STRING ansi_str;
    LPWSTR result;

    for (pos = 0; pos < LARGE_STRI_BUFFER_LENGTH; pos++) {
	expected_wstr[pos] = ulonglong2str->Buffer[pos];
    } /* for */
    expected_wstr[LARGE_STRI_BUFFER_LENGTH] = '\0';

    for (pos = 0; pos < LARGE_STRI_BUFFER_LENGTH; pos++) {
	dest_wstr[pos] = '-';
    } /* for */
    dest_wstr[LARGE_STRI_BUFFER_LENGTH] = '\0';
    unicode_string.Length = LARGE_STRI_BUFFER_LENGTH * sizeof(WCHAR);
    unicode_string.MaximumLength = unicode_string.Length + sizeof(WCHAR);
    unicode_string.Buffer = dest_wstr;

    result = FUNC4(ulonglong2str->value, dest_wstr, ulonglong2str->base);
    FUNC3(&ansi_str, &unicode_string, 1);
    FUNC1(result == dest_wstr,
       "(test %d): _ui64tow(0x%s, [out], %d) has result %p, expected: %p\n",
       test_num, FUNC5(ulonglong2str->value),
       ulonglong2str->base, result, dest_wstr);
    FUNC1(FUNC0(dest_wstr, expected_wstr, LARGE_STRI_BUFFER_LENGTH * sizeof(WCHAR)) == 0,
       "(test %d): _ui64tow(0x%s, [out], %d) assigns string \"%s\", expected: \"%s\"\n",
       test_num, FUNC5(ulonglong2str->value),
       ulonglong2str->base, ansi_str.Buffer, ulonglong2str->Buffer);
    FUNC2(&ansi_str);
}