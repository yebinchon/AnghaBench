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

/* Variables and functions */
 int BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int DATE_LONGDATE ; 
 int DATE_SHORTDATE ; 
 int /*<<< orphan*/  ERROR_INVALID_FLAGS ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  EXPECT_EQW ; 
 int /*<<< orphan*/  EXPECT_LENW ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * emptyW ; 
 int /*<<< orphan*/  localeW ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
  int ret;
  SYSTEMTIME  curtime;
  WCHAR buffer[BUFFER_SIZE], input[BUFFER_SIZE], Expected[BUFFER_SIZE];

  if (!&pGetDateFormatEx)
  {
      FUNC6("GetDateFormatEx not supported\n");
      return;
  }

  FUNC2("",""); /* If flags are set, then format must be NULL */
  FUNC3(0xdeadbeef);
  ret = FUNC5(localeW, DATE_LONGDATE, NULL,
                       input, buffer, FUNC0(buffer), NULL);
  FUNC4(!ret && FUNC1() == ERROR_INVALID_FLAGS,
     "Expected ERROR_INVALID_FLAGS, got %d\n", FUNC1());
  EXPECT_EQW;

  FUNC2("",""); /* NULL buffer, len > 0 */
  FUNC3(0xdeadbeef);
  ret = FUNC5(localeW, 0, NULL, input, NULL, FUNC0(buffer), NULL);
  FUNC4( !ret && FUNC1() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

  FUNC2("",""); /* NULL buffer, len == 0 */
  ret = FUNC5(localeW, 0, NULL, input, NULL, 0, NULL);
  FUNC4(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENW; EXPECT_EQW;

  FUNC2("",""); /* Invalid flag combination */
  FUNC3(0xdeadbeef);
  ret = FUNC5(localeW, DATE_LONGDATE|DATE_SHORTDATE, NULL,
                       input, NULL, 0, NULL);
  FUNC4(!ret && FUNC1() == ERROR_INVALID_FLAGS,
     "Expected ERROR_INVALID_FLAGS, got %d\n", FUNC1());
  EXPECT_EQW;

  curtime.wYear = 2002;
  curtime.wMonth = 10;
  curtime.wDay = 23;
  curtime.wDayOfWeek = 45612; /* Should be 3 - Wednesday */
  curtime.wHour = 65432; /* Invalid */
  curtime.wMinute = 34512; /* Invalid */
  curtime.wSecond = 65535; /* Invalid */
  curtime.wMilliseconds = 12345;
  FUNC2("dddd d MMMM yyyy","Wednesday 23 October 2002"); /* Incorrect DOW and time */
  ret = FUNC5(localeW, 0, &curtime, input, buffer, FUNC0(buffer), NULL);
  FUNC4(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENW; EXPECT_EQW;

  curtime.wYear = 2002;
  curtime.wMonth = 10;
  curtime.wDay = 23;
  curtime.wDayOfWeek = 45612; /* Should be 3 - Wednesday */
  curtime.wHour = 65432; /* Invalid */
  curtime.wMinute = 34512; /* Invalid */
  curtime.wSecond = 65535; /* Invalid */
  curtime.wMilliseconds = 12345;
  FUNC2("dddd d MMMM yyyy","Wednesday 23 October 2002");
  ret = FUNC5(localeW, 0, &curtime, input, buffer, FUNC0(buffer), emptyW); /* Use reserved arg */
  FUNC4( !ret && FUNC1() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

  /* Limit tests */

  curtime.wYear = 1601;
  curtime.wMonth = 1;
  curtime.wDay = 1;
  curtime.wDayOfWeek = 0; /* Irrelevant */
  curtime.wHour = 0;
  curtime.wMinute = 0;
  curtime.wSecond = 0;
  curtime.wMilliseconds = 0;
  FUNC2("dddd d MMMM yyyy","Monday 1 January 1601");
  FUNC3(0xdeadbeef);
  ret = FUNC5(localeW, 0, &curtime, input, buffer, FUNC0(buffer), NULL);
  FUNC4(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENW; EXPECT_EQW;

  curtime.wYear = 1600;
  curtime.wMonth = 12;
  curtime.wDay = 31;
  curtime.wDayOfWeek = 0; /* Irrelevant */
  curtime.wHour = 23;
  curtime.wMinute = 59;
  curtime.wSecond = 59;
  curtime.wMilliseconds = 999;
  FUNC2("dddd d MMMM yyyy","Friday 31 December 1600");
  FUNC3(0xdeadbeef);
  ret = FUNC5(localeW, 0, &curtime, input, buffer, FUNC0(buffer), NULL);
  FUNC4( !ret && FUNC1() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());
}