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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  ULONG ; 
 int /*<<< orphan*/  VarUI2FromUI4 ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC1(ULONG);

  FUNC0(VarUI2FromUI4, 0);     FUNC2(0);
  FUNC0(VarUI2FromUI4, 65535); FUNC2(65535);
  FUNC0(VarUI2FromUI4, 65536); EXPECT_OVERFLOW;
}