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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  LONG ; 
 int /*<<< orphan*/  VarI2FromI4 ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC2(LONG);
  int i;

  FUNC0(VarI2FromI4, -32769); EXPECT_OVERFLOW;
  FUNC1(VarI2FromI4, -32768, 32768);
  FUNC0(VarI2FromI4, 32768);  EXPECT_OVERFLOW;
}