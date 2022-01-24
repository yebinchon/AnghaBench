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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  VARIANT_BOOL ; 
 int /*<<< orphan*/  VarUI1FromBool ; 

__attribute__((used)) static void FUNC4(void)
{
  FUNC2(VARIANT_BOOL);
  int i;

  /* Note that conversions from bool overflow! */
  FUNC0(VarUI1FromBool, -1); FUNC3(255);
  FUNC1(VarUI1FromBool, 0, 256);
  FUNC0(VarUI1FromBool, 256); FUNC3(0);
}