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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  LONG64 ; 
 int /*<<< orphan*/  VarUI4FromI8 ; 

__attribute__((used)) static void FUNC4(void)
{
  FUNC2(LONG64);

  FUNC0(VarUI4FromI8, -1);           EXPECT_OVERFLOW;
  FUNC0(VarUI4FromI8, 0);            FUNC3(0);
  FUNC0(VarUI4FromI8, 1);            FUNC3(1);
  FUNC0(VarUI4FromI8, 4294967295ul); FUNC3(4294967295ul);
  FUNC1(VarUI4FromI8, 1, 0);      EXPECT_OVERFLOW;
}