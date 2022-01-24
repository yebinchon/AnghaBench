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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DECIMAL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  VarUI2FromDec ; 

__attribute__((used)) static void FUNC4(void)
{
  FUNC2(DECIMAL);

  FUNC0(VarUI2FromDec);

  FUNC1(VarUI2FromDec,0,0x80,0,1);  EXPECT_OVERFLOW;
  FUNC1(VarUI2FromDec,0,0,0,0);     FUNC3(0);
  FUNC1(VarUI2FromDec,0,0,0,1);     FUNC3(1);
  FUNC1(VarUI2FromDec,0,0,0,65535); FUNC3(65535);
  FUNC1(VarUI2FromDec,0,0,0,65536); EXPECT_OVERFLOW;

  FUNC1(VarUI2FromDec,2,0x80,0,100);  EXPECT_OVERFLOW;
  FUNC1(VarUI2FromDec,2,0,0,6553500); FUNC3(65535);
  FUNC1(VarUI2FromDec,2,0,0,6553600); EXPECT_OVERFLOW;
}