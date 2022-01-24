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
struct TYPE_3__ {scalar_t__ wMilliseconds; scalar_t__ wSecond; scalar_t__ wMinute; scalar_t__ wHour; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  char OLECHAR ;
typedef  int /*<<< orphan*/  LCID ;
typedef  scalar_t__ HRESULT ;
typedef  double DATE ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 char** BadDateStrings ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 int /*<<< orphan*/  EXPECT_MISMATCH ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LANG_GERMAN ; 
 int /*<<< orphan*/  LANG_SPANISH ; 
 int /*<<< orphan*/  LOCALE_NOUSEROVERRIDE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int /*<<< orphan*/  SUBLANG_GERMAN ; 
 int /*<<< orphan*/  SUBLANG_SPANISH ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static void FUNC8(void)
{
  LCID lcid;
  DATE out, relative;
  HRESULT hres;
  SYSTEMTIME st;
  OLECHAR buff[128];
  size_t i;
  OLECHAR with_ideographic_spaceW[] = { '6','/','3','0','/','2','0','1','1',0x3000,
                                        '1',':','2','0',':','3','4',0 };

  lcid = FUNC5(FUNC4(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);

  /* Some date formats are relative, so we need to find the current year */
  FUNC3(&st);
  st.wHour = st.wMinute = st.wSecond = st.wMilliseconds = 0;
  FUNC1(NULL); EXPECT_MISMATCH;

  /* Floating point number are not recognised */
  FUNC1("0.0");
  if (hres == S_OK)
    FUNC2(0.0); /* Very old versions accept this string */
  else
    EXPECT_MISMATCH;

  /* 1 element - can only be a time, and only if it has am/pm */
  FUNC1("1 am"); FUNC2(0.04166666666666666);
  /* 2 elements */
  /* A decimal point is treated as a time separator.
   * The following are converted as hours/minutes.
   */
  FUNC1("0.1");  FUNC2(0.0006944444444444445);
  FUNC1("0.40"); FUNC2(0.02777777777777778);
  FUNC1("2.5");  FUNC2(0.08680555555555555);
  /* A colon acts as a decimal point */
  FUNC1("0:1");  FUNC2(0.0006944444444444445);
  FUNC1("0:20"); FUNC2(0.01388888888888889);
  FUNC1("0:40"); FUNC2(0.02777777777777778);
  FUNC1("3:5");  FUNC2(0.1284722222222222);
  /* Check the am/pm limits */
  FUNC1("00:00 AM"); FUNC2(0.0);
  FUNC1("00:00 a");  FUNC2(0.0);
  FUNC1("12:59 AM"); FUNC2(0.04097222222222222);
  FUNC1("12:59 A");  FUNC2(0.04097222222222222);
  FUNC1("00:00 pm"); FUNC2(0.5);
  FUNC1("00:00 p");  FUNC2(0.5);
  FUNC1("12:59 pm"); FUNC2(0.5409722222222222);
  FUNC1("12:59 p");  FUNC2(0.5409722222222222);
  /* AM/PM is ignored if hours > 12 */
  FUNC1("13:00 AM"); FUNC2(0.5416666666666666);
  FUNC1("13:00 PM"); FUNC2(0.5416666666666666);

  /* Space, dash and slash all indicate a date format. */
  /* If both numbers are valid month values => month/day of current year */
  FUNC1("1 2"); FUNC6(2,1); FUNC2(relative);
  FUNC1("2 1"); FUNC6(1,2); FUNC2(relative);
  /* one number not valid month, is a valid day, other number valid month:
   * that number becomes the day.
   */
  FUNC1("14 1");   FUNC6(14,1); FUNC2(relative);
  FUNC1("1 14");   FUNC2(relative);
  /* If the numbers can't be day/month, they are assumed to be year/month */
  FUNC1("30 2");   FUNC2(10990.0);
  FUNC1("2 30");   FUNC2(10990.0);
  FUNC1("32 49");  EXPECT_MISMATCH; /* Can't be any format */
  FUNC1("0 49");   EXPECT_MISMATCH; /* Can't be any format */
  /* If a month name is given the other number is the day */
  FUNC1("Jan 2");  FUNC6(2,1); FUNC2(relative);
  FUNC1("2 Jan");  FUNC2(relative);
  /* Unless it can't be, in which case it becomes the year */
  FUNC1("Jan 35"); FUNC2(12785.0);
  FUNC1("35 Jan"); FUNC2(12785.0);
  FUNC1("Jan-35"); FUNC2(12785.0);
  FUNC1("35-Jan"); FUNC2(12785.0);
  FUNC1("Jan/35"); FUNC2(12785.0);
  FUNC1("35/Jan"); FUNC2(12785.0);
  /* 3 elements */
  /* 3 numbers and time separator => h:m:s */
  FUNC1("0.1.0");  FUNC2(0.0006944444444444445);
  FUNC1("1.5.2");  FUNC2(0.04516203703703704);
  /* 3 numbers => picks date giving preference to lcid format */
  FUNC1("1 2 3");  FUNC2(37623.0);
  FUNC1("14 2 3"); FUNC2(41673.0);
  FUNC1("2 14 3"); FUNC2(37666.0);
  FUNC1("2 3 14"); FUNC2(41673.0);
  FUNC1("32 2 3"); FUNC2(11722.0);
  FUNC1("2 3 32"); FUNC2(11722.0);
  FUNC1("1 2 29"); FUNC2(47120.0);
  /* After 30, two digit dates are expected to be in the 1900's */
  FUNC1("1 2 30"); FUNC2(10960.0);
  FUNC1("1 2 31"); FUNC2(11325.0);
  FUNC1("3 am 1 2"); FUNC6(2,1); relative += 0.125; FUNC2(relative);
  FUNC1("1 2 3 am"); FUNC2(relative);

  /* 4 elements -interpreted as 2 digit date & time */
  FUNC1("1.2 3 4");   FUNC6(4,3); relative += 0.04305555556; FUNC2(relative);
  FUNC1("3 4 1.2");   FUNC2(relative);
  /* 5 elements - interpreted as 2 & 3 digit date/times */
  FUNC1("1.2.3 4 5"); FUNC6(5,4); relative += 0.04309027778; FUNC2(relative);
  FUNC1("1.2 3 4 5"); FUNC2(38415.04305555556);
#if 0
  /* following throws an exception on winME */
  DFS("1 2 3.4.5"); MKRELDATE(2,1); relative += 0.12783564815; EXPECT_DBL(relative);
#endif
  FUNC1("1 2 3 4.5"); FUNC2(37623.17013888889);
  /* 6 elements - interpreted as 3 digit date/times */
  FUNC1("1.2.3 4 5 6"); FUNC2(38812.04309027778);
  FUNC1("1 2 3 4.5.6"); FUNC2(37623.17020833334);

  for (i = 0; i < FUNC0(BadDateStrings); i++)
  {
    FUNC1(BadDateStrings[i]); EXPECT_MISMATCH;
  }

  /* Some normal-ish strings */
  FUNC1("2 January, 1970"); FUNC2(25570.0);
  FUNC1("2 January 1970");  FUNC2(25570.0);
  FUNC1("2 Jan 1970");      FUNC2(25570.0);
  FUNC1("2/Jan/1970");      FUNC2(25570.0);
  FUNC1("2-Jan-1970");      FUNC2(25570.0);
  FUNC1("1 2 1970");        FUNC2(25570.0);
  FUNC1("1/2/1970");        FUNC2(25570.0);
  FUNC1("1-2-1970");        FUNC2(25570.0);
  FUNC1("13-1-1970");       FUNC2(25581.0);
  FUNC1("1970-1-13");       FUNC2(25581.0);
  FUNC1("6/30/2011 01:20:34");          FUNC2(40724.05594907407);
  FUNC1("6/30/2011 01:20:34 AM");       FUNC2(40724.05594907407);
  FUNC1("6/30/2011 01:20:34 PM");       FUNC2(40724.55594907407);
  FUNC1("2013-05-14 02:04:12");         FUNC2(41408.08625000001);
  FUNC1("2013-05-14 02:04:12.017000000"); EXPECT_MISMATCH;
  /* Native fails "1999 January 3, 9AM". I consider that a bug in native */

  /* test a data with ideographic space */
  out = 0.0;
  hres = FUNC7(with_ideographic_spaceW, lcid, LOCALE_NOUSEROVERRIDE, &out);
  FUNC2(40724.05594907407);

  /* test a non-english data string */
  FUNC1("02.01.1970"); EXPECT_MISMATCH;
  FUNC1("02.01.1970 00:00:00"); EXPECT_MISMATCH;
  lcid = FUNC5(FUNC4(LANG_GERMAN,SUBLANG_GERMAN),SORT_DEFAULT);
  FUNC1("02.01.1970"); FUNC2(25570.0);
  FUNC1("02.13.1970"); FUNC2(25612.0);
  FUNC1("02-13-1970"); FUNC2(25612.0);
  FUNC1("2020-01-11"); FUNC2(43841.0);
  FUNC1("2173-10-14"); FUNC2(100000.0);

  FUNC1("02.01.1970 00:00:00"); FUNC2(25570.0);
  lcid = FUNC5(FUNC4(LANG_SPANISH,SUBLANG_SPANISH),SORT_DEFAULT);
  FUNC1("02.01.1970"); EXPECT_MISMATCH;
  FUNC1("02.01.1970 00:00:00"); EXPECT_MISMATCH;
}