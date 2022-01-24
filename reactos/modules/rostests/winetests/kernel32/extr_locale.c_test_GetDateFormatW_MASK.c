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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int wYear; int wMonth; int wDay; int wDayOfWeek; int wHour; int wMinute; int wSecond; int wMilliseconds; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  int /*<<< orphan*/  LCID ;

/* Variables and functions */
 int BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DATE_LONGDATE ; 
 int /*<<< orphan*/  ERROR_CALL_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  ERROR_INVALID_FLAGS ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  EXPECT_EQW ; 
 int /*<<< orphan*/  EXPECT_LENW ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
  int ret;
  SYSTEMTIME  curtime;
  WCHAR buffer[BUFFER_SIZE], input[BUFFER_SIZE], Expected[BUFFER_SIZE];
  LCID lcid = FUNC4(FUNC3(LANG_ENGLISH, SUBLANG_ENGLISH_US), SORT_DEFAULT);

  FUNC5("",""); /* If flags is not zero then format must be NULL */
  ret = FUNC1(LOCALE_SYSTEM_DEFAULT, DATE_LONGDATE, NULL,
                       input, buffer, FUNC0(buffer));
  if (FUNC2() == ERROR_CALL_NOT_IMPLEMENTED)
  {
    FUNC8("GetDateFormatW is not implemented\n");
    return;
  }
  FUNC7(!ret && FUNC2() == ERROR_INVALID_FLAGS,
     "Expected ERROR_INVALID_FLAGS, got %d\n", FUNC2());
  EXPECT_EQW;

  FUNC5("",""); /* NULL buffer, len > 0 */
  FUNC6(0xdeadbeef);
  ret = FUNC1 (lcid, 0, NULL, input, NULL, FUNC0(buffer));
  FUNC7( !ret && FUNC2() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC2());

  FUNC5("",""); /* NULL buffer, len == 0 */
  ret = FUNC1 (lcid, 0, NULL, input, NULL, 0);
  FUNC7(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC2());
  EXPECT_LENW; EXPECT_EQW;

  curtime.wYear = 2002;
  curtime.wMonth = 10;
  curtime.wDay = 23;
  curtime.wDayOfWeek = 45612; /* Should be 3 - Wednesday */
  curtime.wHour = 65432; /* Invalid */
  curtime.wMinute = 34512; /* Invalid */
  curtime.wSecond = 65535; /* Invalid */
  curtime.wMilliseconds = 12345;
  FUNC5("dddd d MMMM yyyy","Wednesday 23 October 2002"); /* Incorrect DOW and time */
  ret = FUNC1 (lcid, 0, &curtime, input, buffer, FUNC0(buffer));
  FUNC7(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC2());
  EXPECT_LENW; EXPECT_EQW;

  /* Limit tests */

  curtime.wYear = 1601;
  curtime.wMonth = 1;
  curtime.wDay = 1;
  curtime.wDayOfWeek = 0; /* Irrelevant */
  curtime.wHour = 0;
  curtime.wMinute = 0;
  curtime.wSecond = 0;
  curtime.wMilliseconds = 0;
  FUNC5("dddd d MMMM yyyy","Monday 1 January 1601");
  FUNC6(0xdeadbeef);
  ret = FUNC1 (lcid, 0, &curtime, input, buffer, FUNC0(buffer));
  FUNC7(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC2());
  EXPECT_LENW; EXPECT_EQW;

  curtime.wYear = 1600;
  curtime.wMonth = 12;
  curtime.wDay = 31;
  curtime.wDayOfWeek = 0; /* Irrelevant */
  curtime.wHour = 23;
  curtime.wMinute = 59;
  curtime.wSecond = 59;
  curtime.wMilliseconds = 999;
  FUNC5("dddd d MMMM yyyy","Friday 31 December 1600");
  FUNC6(0xdeadbeef);
  ret = FUNC1 (lcid, 0, &curtime, input, buffer, FUNC0(buffer));
  FUNC7( !ret && FUNC2() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC2());
}