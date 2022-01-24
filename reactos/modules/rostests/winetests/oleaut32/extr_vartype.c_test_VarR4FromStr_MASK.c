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
 int /*<<< orphan*/  FUNC2 (float) ; 
 int /*<<< orphan*/  EXPECT_MISMATCH ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LCID ; 
 int /*<<< orphan*/  LOCALE_NOUSEROVERRIDE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SORT_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 int /*<<< orphan*/  VarR4FromStr ; 
 int /*<<< orphan*/  in ; 

__attribute__((used)) static void FUNC5(void)
{
  FUNC1(LCID);
  OLECHAR buff[128];

  in = FUNC4(FUNC3(LANG_ENGLISH,SUBLANG_ENGLISH_US),SORT_DEFAULT);

  FUNC0(VarR4FromStr,NULL,0);    EXPECT_MISMATCH;
  FUNC0(VarR4FromStr,"-1", 0);   FUNC2(-1.0f);
  FUNC0(VarR4FromStr,"0", 0);    FUNC2(0.0f);
  FUNC0(VarR4FromStr,"1", 0);    FUNC2(1.0f);

  FUNC0(VarR4FromStr,"-1.5",LOCALE_NOUSEROVERRIDE); FUNC2(-1.5f);
  FUNC0(VarR4FromStr,"-0.6",LOCALE_NOUSEROVERRIDE); FUNC2(-0.6f);
  FUNC0(VarR4FromStr,"-0.5",LOCALE_NOUSEROVERRIDE); FUNC2(-0.5f);
  FUNC0(VarR4FromStr,"-0.4",LOCALE_NOUSEROVERRIDE); FUNC2(-0.4f);
  FUNC0(VarR4FromStr,"0.4",LOCALE_NOUSEROVERRIDE);  FUNC2(0.4f);
  FUNC0(VarR4FromStr,"0.5",LOCALE_NOUSEROVERRIDE);  FUNC2(0.5f);
  FUNC0(VarR4FromStr,"0.6",LOCALE_NOUSEROVERRIDE);  FUNC2(0.6f);
  FUNC0(VarR4FromStr,"1.5",LOCALE_NOUSEROVERRIDE);  FUNC2(1.5f);
}