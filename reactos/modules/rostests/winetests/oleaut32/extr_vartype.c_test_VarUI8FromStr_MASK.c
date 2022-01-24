#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  OLECHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  EXPECT_MISMATCH ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LCID ; 
 int /*<<< orphan*/  LOCALE_NOUSEROVERRIDE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int /*<<< orphan*/  VarUI8FromStr ; 
 int /*<<< orphan*/  in ; 

__attribute__((used)) static void FUNC6(void)
{
  FUNC1(LCID);
  OLECHAR buff[128];

  in = FUNC5(FUNC4(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);

  FUNC0(VarUI8FromStr,NULL,0);                    EXPECT_MISMATCH;
  FUNC0(VarUI8FromStr,"0",0);                     FUNC2(0);
  FUNC0(VarUI8FromStr,"-1",0);                    EXPECT_OVERFLOW;
  FUNC0(VarUI8FromStr,"2147483647",0);            FUNC2(2147483647);
  FUNC0(VarUI8FromStr,"18446744073709551614",0);  FUNC3(0xFFFFFFFF,0xFFFFFFFE);
  FUNC0(VarUI8FromStr,"18446744073709551615",0);  FUNC3(0xFFFFFFFF,0xFFFFFFFF);
  FUNC0(VarUI8FromStr,"18446744073709551616",0);  EXPECT_OVERFLOW;

  FUNC0(VarUI8FromStr,"-1.5",LOCALE_NOUSEROVERRIDE); EXPECT_OVERFLOW;
  FUNC0(VarUI8FromStr,"-0.6",LOCALE_NOUSEROVERRIDE); EXPECT_OVERFLOW;
  FUNC0(VarUI8FromStr,"-0.5",LOCALE_NOUSEROVERRIDE); FUNC2(0);
  FUNC0(VarUI8FromStr,"-0.4",LOCALE_NOUSEROVERRIDE); FUNC2(0);
  FUNC0(VarUI8FromStr,"0.4",LOCALE_NOUSEROVERRIDE);  FUNC2(0);
  FUNC0(VarUI8FromStr,"0.5",LOCALE_NOUSEROVERRIDE);  FUNC2(0);
  FUNC0(VarUI8FromStr,"0.6",LOCALE_NOUSEROVERRIDE);  FUNC2(1);
  FUNC0(VarUI8FromStr,"1.5",LOCALE_NOUSEROVERRIDE);  FUNC2(2);
}