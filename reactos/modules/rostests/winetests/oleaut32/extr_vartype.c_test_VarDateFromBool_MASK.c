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
 int /*<<< orphan*/  FUNC2 (double) ; 
 int /*<<< orphan*/  VARIANT_BOOL ; 
 double VARIANT_FALSE ; 
 double VARIANT_TRUE ; 
 int /*<<< orphan*/  VarDateFromBool ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC1(VARIANT_BOOL);

  FUNC0(VarDateFromBool, VARIANT_TRUE);  FUNC2(VARIANT_TRUE * 1.0);
  FUNC0(VarDateFromBool, VARIANT_FALSE); FUNC2(VARIANT_FALSE * 1.0);
}