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
typedef  int /*<<< orphan*/  strm_state ;

/* Variables and functions */
 int /*<<< orphan*/  M_E ; 
 int /*<<< orphan*/  M_PI ; 
 int /*<<< orphan*/  math_ceil ; 
 int /*<<< orphan*/  math_cos ; 
 int /*<<< orphan*/  math_floor ; 
 int /*<<< orphan*/  math_pow ; 
 int /*<<< orphan*/  math_round ; 
 int /*<<< orphan*/  math_sin ; 
 int /*<<< orphan*/  math_sqrt ; 
 int /*<<< orphan*/  math_tan ; 
 int /*<<< orphan*/  math_trunc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void
FUNC3(strm_state* state)
{
  FUNC2(state, "PI", FUNC1(M_PI));
  FUNC2(state, "E", FUNC1(M_E));
  FUNC2(state, "sqrt", FUNC0(math_sqrt));
  FUNC2(state, "sin", FUNC0(math_sin));
  FUNC2(state, "cos", FUNC0(math_cos));
  FUNC2(state, "tan", FUNC0(math_tan));
  FUNC2(state, "pow", FUNC0(math_pow));
  FUNC2(state, "round", FUNC0(math_round));
  FUNC2(state, "ceil", FUNC0(math_ceil));
  FUNC2(state, "floor", FUNC0(math_floor));
  FUNC2(state, "trunc", FUNC0(math_trunc));
  FUNC2(state, "int", FUNC0(math_trunc));
}