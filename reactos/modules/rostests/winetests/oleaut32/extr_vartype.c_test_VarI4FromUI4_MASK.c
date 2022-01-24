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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  ULONG ; 
 int /*<<< orphan*/  VarI4FromUI4 ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC1(ULONG);

  FUNC0(VarI4FromUI4, 0);            FUNC2(0);
  FUNC0(VarI4FromUI4, 1);            FUNC2(1);
  FUNC0(VarI4FromUI4, 2147483647);   FUNC2(2147483647);
  FUNC0(VarI4FromUI4, 2147483648ul); EXPECT_OVERFLOW;
}