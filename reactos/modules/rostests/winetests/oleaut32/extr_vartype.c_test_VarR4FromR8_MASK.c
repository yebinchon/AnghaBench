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
 int /*<<< orphan*/  FUNC2 (float) ; 
 int /*<<< orphan*/  FLOAT ; 
 int /*<<< orphan*/  VarR4FromR8 ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC1(FLOAT);

  FUNC0(VarR4FromR8, -1.0); FUNC2(-1.0f);
  FUNC0(VarR4FromR8, 0.0); FUNC2(0.0f);
  FUNC0(VarR4FromR8, 1.0); FUNC2(1.0f);
  FUNC0(VarR4FromR8, 1.5); FUNC2(1.5f);

  /* Skip rounding tests - no rounding is done */
}