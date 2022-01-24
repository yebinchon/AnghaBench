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
typedef  int /*<<< orphan*/  format ;
struct TYPE_4__ {int NumDigits; int LeadingZero; int Grouping; char* lpDecimalSep; char* lpThousandSep; void* NegativeOrder; } ;
typedef  TYPE_1__ NUMBERFMTA ;
typedef  int /*<<< orphan*/  LCID ;

/* Variables and functions */
 int BUFFER_SIZE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  ERROR_INVALID_FLAGS ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  EXPECT_EQA ; 
 int /*<<< orphan*/  EXPECT_LENA ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LANG_FRENCH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* NEG_LEFT ; 
 void* NEG_LEFT_SPACE ; 
 void* NEG_PARENS ; 
 void* NEG_RIGHT ; 
 void* NEG_RIGHT_SPACE ; 
 int /*<<< orphan*/  NUO ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int,...) ; 

__attribute__((used)) static void FUNC10(void)
{
  static char szDot[] = { '.', '\0' };
  static char szComma[] = { ',', '\0' };
  int ret;
  LCID lcid = FUNC5(FUNC4(LANG_ENGLISH, SUBLANG_ENGLISH_US), SORT_DEFAULT);
  char buffer[BUFFER_SIZE], Expected[BUFFER_SIZE], input[BUFFER_SIZE];
  NUMBERFMTA format;

  FUNC8(&format, 0, sizeof(format));

  FUNC6("23",""); /* NULL output, length > 0 --> Error */
  FUNC7(0xdeadbeef);
  ret = FUNC2(lcid, 0, input, NULL, NULL, FUNC0(buffer));
  FUNC9( !ret && FUNC1() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

  FUNC6("23,53",""); /* Invalid character --> Error */
  FUNC7(0xdeadbeef);
  ret = FUNC2(lcid, 0, input, NULL, buffer, FUNC0(buffer));
  FUNC9( !ret && FUNC1() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

  FUNC6("--",""); /* Double '-' --> Error */
  FUNC7(0xdeadbeef);
  ret = FUNC2(lcid, 0, input, NULL, buffer, FUNC0(buffer));
  FUNC9( !ret && FUNC1() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

  FUNC6("0-",""); /* Trailing '-' --> Error */
  FUNC7(0xdeadbeef);
  ret = FUNC2(lcid, 0, input, NULL, buffer, FUNC0(buffer));
  FUNC9( !ret && FUNC1() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

  FUNC6("0..",""); /* Double '.' --> Error */
  FUNC7(0xdeadbeef);
  ret = FUNC2(lcid, 0, input, NULL, buffer, FUNC0(buffer));
  FUNC9( !ret && FUNC1() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

  FUNC6(" 0.1",""); /* Leading space --> Error */
  FUNC7(0xdeadbeef);
  ret = FUNC2(lcid, 0, input, NULL, buffer, FUNC0(buffer));
  FUNC9( !ret && FUNC1() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

  FUNC6("1234","1"); /* Length too small --> Write up to length chars */
  FUNC7(0xdeadbeef);
  ret = FUNC2(lcid, NUO, input, NULL, buffer, 2);
  FUNC9( !ret && FUNC1() == ERROR_INSUFFICIENT_BUFFER,
      "Expected ERROR_INSUFFICIENT_BUFFER, got %d\n", FUNC1());

  FUNC6("2353",""); /* Format and flags given --> Error */
  FUNC7(0xdeadbeef);
  ret = FUNC2(lcid, NUO, input, &format, buffer, FUNC0(buffer));
  FUNC9( !ret, "Expected ret == 0, got %d\n", ret);
  FUNC9( FUNC1() == ERROR_INVALID_FLAGS || FUNC1() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_FLAGS, got %d\n", FUNC1());

  FUNC6("2353",""); /* Invalid format --> Error */
  FUNC7(0xdeadbeef);
  ret = FUNC2(lcid, 0, input, &format, buffer, FUNC0(buffer));
  FUNC9( !ret && FUNC1() == ERROR_INVALID_PARAMETER,
      "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

  FUNC6("2353","2,353.00"); /* Valid number */
  ret = FUNC2(lcid, NUO, input, NULL, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  FUNC6("-2353","-2,353.00"); /* Valid negative number */
  ret = FUNC2(lcid, NUO, input, NULL, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  FUNC6("-353","-353.00"); /* test for off by one error in grouping */
  ret = FUNC2(lcid, NUO, input, NULL, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  FUNC6("2353.1","2,353.10"); /* Valid real number */
  ret = FUNC2(lcid, NUO, input, NULL, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  FUNC6("2353.111","2,353.11"); /* Too many DP --> Truncated */
  ret = FUNC2(lcid, NUO, input, NULL, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  FUNC6("2353.119","2,353.12");  /* Too many DP --> Rounded */
  ret = FUNC2(lcid, NUO, input, NULL, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  format.NumDigits = 0; /* No decimal separator */
  format.LeadingZero = 0;
  format.Grouping = 0;  /* No grouping char */
  format.NegativeOrder = 0;
  format.lpDecimalSep = szDot;
  format.lpThousandSep = szComma;

  FUNC6("2353","2353"); /* No decimal or grouping chars expected */
  ret = FUNC2(lcid, 0, input, &format, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  format.NumDigits = 1; /* 1 DP --> Expect decimal separator */
  FUNC6("2353","2353.0");
  ret = FUNC2(lcid, 0, input, &format, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  format.Grouping = 2; /* Group by 100's */
  FUNC6("2353","23,53.0");
  ret = FUNC2(lcid, 0, input, &format, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  FUNC6("235","235.0"); /* Grouping of a positive number */
  format.Grouping = 3;
  ret = FUNC2(lcid, 0, input, &format, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  FUNC6("-235","-235.0"); /* Grouping of a negative number */
  format.NegativeOrder = NEG_LEFT;
  ret = FUNC2(lcid, 0, input, &format, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  format.LeadingZero = 1; /* Always provide leading zero */
  FUNC6(".5","0.5");
  ret = FUNC2(lcid, 0, input, &format, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  format.NegativeOrder = NEG_PARENS;
  FUNC6("-1","(1.0)");
  ret = FUNC2(lcid, 0, input, &format, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  format.NegativeOrder = NEG_LEFT;
  FUNC6("-1","-1.0");
  ret = FUNC2(lcid, 0, input, &format, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  format.NegativeOrder = NEG_LEFT_SPACE;
  FUNC6("-1","- 1.0");
  ret = FUNC2(lcid, 0, input, &format, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  format.NegativeOrder = NEG_RIGHT;
  FUNC6("-1","1.0-");
  ret = FUNC2(lcid, 0, input, &format, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  format.NegativeOrder = NEG_RIGHT_SPACE;
  FUNC6("-1","1.0 -");
  ret = FUNC2(lcid, 0, input, &format, buffer, FUNC0(buffer));
  FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
  EXPECT_LENA; EXPECT_EQA;

  lcid = FUNC5(FUNC4(LANG_FRENCH, SUBLANG_DEFAULT), SORT_DEFAULT);

  if (FUNC3(lcid, 0))
  {
    FUNC6("-12345","-12 345,00"); /* Try French formatting */
    Expected[3] = 160; /* Non breaking space */
    ret = FUNC2(lcid, NUO, input, NULL, buffer, FUNC0(buffer));
    FUNC9(ret, "Expected ret != 0, got %d, error %d\n", ret, FUNC1());
    EXPECT_LENA; EXPECT_EQA;
  }
}