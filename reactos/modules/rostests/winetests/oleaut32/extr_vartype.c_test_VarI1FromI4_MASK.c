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
 int /*<<< orphan*/  VarI1FromI4 ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC2(LONG);
  int i;

  FUNC0(VarI1FromI4, -129); EXPECT_OVERFLOW;
  FUNC1(VarI1FromI4, -128, 128);
  FUNC0(VarI1FromI4, 128);  EXPECT_OVERFLOW;
}