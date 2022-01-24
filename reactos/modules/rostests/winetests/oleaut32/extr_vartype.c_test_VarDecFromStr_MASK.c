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
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXPECT_MISMATCH ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LCID ; 
 int /*<<< orphan*/  LOCALE_NOUSEROVERRIDE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int /*<<< orphan*/  VarDecFromStr ; 
 int /*<<< orphan*/  in ; 

__attribute__((used)) static void FUNC6(void)
{
  FUNC1(LCID);
  OLECHAR buff[128];

  in = FUNC5(FUNC4(LANG_ENGLISH, SUBLANG_ENGLISH_US), SORT_DEFAULT);

  FUNC0(VarDecFromStr,NULL,0);                       EXPECT_MISMATCH;
  FUNC0(VarDecFromStr,"-1",  LOCALE_NOUSEROVERRIDE); FUNC2(0,0x80,0,1);
  FUNC0(VarDecFromStr,"0",   LOCALE_NOUSEROVERRIDE); FUNC2(0,0,0,0);
  FUNC0(VarDecFromStr,"1",   LOCALE_NOUSEROVERRIDE); FUNC2(0,0,0,1);
  FUNC0(VarDecFromStr,"0.5", LOCALE_NOUSEROVERRIDE); FUNC2(1,0,0,5);
  FUNC0(VarDecFromStr,"4294967296", LOCALE_NOUSEROVERRIDE); FUNC3(0,0,0,1,0);
  FUNC0(VarDecFromStr,"18446744073709551616", LOCALE_NOUSEROVERRIDE); FUNC2(0,0,1,0);
  FUNC0(VarDecFromStr,"4294967296.0", LOCALE_NOUSEROVERRIDE); FUNC3(0,0,0,1,0);
  FUNC0(VarDecFromStr,"18446744073709551616.0", LOCALE_NOUSEROVERRIDE); FUNC2(0,0,1,0);
}