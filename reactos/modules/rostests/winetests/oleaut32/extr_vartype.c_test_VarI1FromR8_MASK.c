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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DOUBLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  VarI1FromR8 ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC1(DOUBLE);

  FUNC0(VarI1FromR8, -129.0); EXPECT_OVERFLOW;
  FUNC0(VarI1FromR8, -128.51); EXPECT_OVERFLOW;
  FUNC0(VarI1FromR8, -128.5); FUNC2(-128);
  FUNC0(VarI1FromR8, -128.0); FUNC2(-128);
  FUNC0(VarI1FromR8, -1.0);   FUNC2(-1);
  FUNC0(VarI1FromR8, 0.0);    FUNC2(0);
  FUNC0(VarI1FromR8, 1.0);    FUNC2(1);
  FUNC0(VarI1FromR8, 127.0);  FUNC2(127);
  FUNC0(VarI1FromR8, 127.49);  FUNC2(127);
  FUNC0(VarI1FromR8, 127.5);  EXPECT_OVERFLOW;
  FUNC0(VarI1FromR8, 128.0);  EXPECT_OVERFLOW;

  FUNC0(VarI1FromR8, -1.5); FUNC2(-2);
  FUNC0(VarI1FromR8, -0.6); FUNC2(-1);
  FUNC0(VarI1FromR8, -0.5); FUNC2(0);
  FUNC0(VarI1FromR8, -0.4); FUNC2(0);
  FUNC0(VarI1FromR8, 0.4);  FUNC2(0);
  FUNC0(VarI1FromR8, 0.5);  FUNC2(0);
  FUNC0(VarI1FromR8, 0.6);  FUNC2(1);
  FUNC0(VarI1FromR8, 1.5);  FUNC2(2);
}