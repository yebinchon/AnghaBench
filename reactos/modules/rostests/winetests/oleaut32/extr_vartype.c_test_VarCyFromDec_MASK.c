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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DECIMAL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  VarCyFromDec ; 

__attribute__((used)) static void FUNC6(void)
{
  FUNC3(DECIMAL);

  FUNC0(VarCyFromDec);

  FUNC1(VarCyFromDec,0,0x80,0,1); FUNC4(-1);
  FUNC1(VarCyFromDec,0,0,0,0);    FUNC4(0);
  FUNC1(VarCyFromDec,0,0,0,1);    FUNC4(1);

  FUNC2(VarCyFromDec,0,0,0,214748, 1566804068); FUNC5(2147483647ul, 4294951488ul);
  FUNC2(VarCyFromDec,0,0,0,214748, 1566804069); FUNC5(2147483647ul, 4294961488ul);
  FUNC2(VarCyFromDec,0,0,0,214748, 1566804070); EXPECT_OVERFLOW;
  FUNC2(VarCyFromDec,0,0,0,214749, 1566804068); EXPECT_OVERFLOW;

  FUNC1(VarCyFromDec,2,0,0,100);     FUNC4(1);
  FUNC1(VarCyFromDec,2,0x80,0,100);  FUNC4(-1);
  FUNC1(VarCyFromDec,2,0x80,0,1);    FUNC4(-0.01);
  FUNC1(VarCyFromDec,2,0,0,1);       FUNC4(0.01);
  FUNC1(VarCyFromDec,2,0x80,0,1);    FUNC4(-0.01);
  FUNC1(VarCyFromDec,2,0,0,999);     FUNC4(9.99);
  FUNC1(VarCyFromDec,2,0x80,0,999);  FUNC4(-9.99);
  FUNC1(VarCyFromDec,2,0,0,1500);    FUNC4(15);
  FUNC1(VarCyFromDec,2,0x80,0,1500); FUNC4(-15);
}