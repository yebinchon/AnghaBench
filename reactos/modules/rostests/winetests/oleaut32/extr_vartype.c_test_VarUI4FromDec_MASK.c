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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DECIMAL ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  VarUI4FromDec ; 

__attribute__((used)) static void FUNC5(void)
{
  FUNC3(DECIMAL);

  FUNC0(VarUI4FromDec);

  FUNC1(VarUI4FromDec,0,0x80,0,1);              EXPECT_OVERFLOW;
  FUNC1(VarUI4FromDec,0,0,0,0);                 FUNC4(0);
  FUNC1(VarUI4FromDec,0,0,0,1);                 FUNC4(1);
  FUNC2(VarUI4FromDec,0,0,0,0,4294967295ul);  FUNC4(4294967295ul);
  FUNC2(VarUI4FromDec,0,0,0,1,0);             EXPECT_OVERFLOW;

  FUNC2(VarUI4FromDec,2,0,0,99,4294967196ul); FUNC4(4294967295ul);
  FUNC2(VarUI4FromDec,2,0,0,100,0);           EXPECT_OVERFLOW;
}