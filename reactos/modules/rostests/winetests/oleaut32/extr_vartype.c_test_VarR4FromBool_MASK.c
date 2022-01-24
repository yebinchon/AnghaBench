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
 int /*<<< orphan*/  FUNC2 (float) ; 
 int /*<<< orphan*/  VARIANT_BOOL ; 
 float VARIANT_FALSE ; 
 float VARIANT_TRUE ; 
 int /*<<< orphan*/  VarR4FromBool ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC1(VARIANT_BOOL);

  FUNC0(VarR4FromBool, VARIANT_TRUE);  FUNC2(VARIANT_TRUE * 1.0f);
  FUNC0(VarR4FromBool, VARIANT_FALSE); FUNC2(VARIANT_FALSE * 1.0f);
}