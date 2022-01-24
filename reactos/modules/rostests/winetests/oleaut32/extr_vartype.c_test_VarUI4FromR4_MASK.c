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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  FLOAT ; 
 int /*<<< orphan*/  VarUI4FromR4 ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC1(FLOAT);

  /* We can't test max values as they are not exactly representable in a float */
  FUNC0(VarUI4FromR4, -1.0f); EXPECT_OVERFLOW;
  FUNC0(VarUI4FromR4, -0.51f); EXPECT_OVERFLOW;
  FUNC0(VarUI4FromR4, -0.5f);  FUNC2(0);
  FUNC0(VarUI4FromR4, 0.0f);  FUNC2(0);
  FUNC0(VarUI4FromR4, 1.0f);  FUNC2(1);

  FUNC0(VarUI4FromR4, -1.5f); EXPECT_OVERFLOW;
  FUNC0(VarUI4FromR4, -0.6f); EXPECT_OVERFLOW;
  FUNC0(VarUI4FromR4, -0.5f); FUNC2(0);
  FUNC0(VarUI4FromR4, -0.4f); FUNC2(0);
  FUNC0(VarUI4FromR4, 0.4f);  FUNC2(0);
  FUNC0(VarUI4FromR4, 0.5f);  FUNC2(0);
  FUNC0(VarUI4FromR4, 0.6f);  FUNC2(1);
  FUNC0(VarUI4FromR4, 1.5f);  FUNC2(2);

}