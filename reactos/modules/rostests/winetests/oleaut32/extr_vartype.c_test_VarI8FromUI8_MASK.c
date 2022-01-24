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
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  ULONG64 ; 
 int /*<<< orphan*/  VarI8FromUI8 ; 

__attribute__((used)) static void FUNC5(void)
{
  FUNC2(ULONG64);

  FUNC0(VarI8FromUI8, 0); FUNC3(0);
  FUNC0(VarI8FromUI8, 1); FUNC3(1);
  FUNC1(VarI8FromUI8, 0x7fffffff, 0xffffffff); FUNC4(0x7fffffff, 0xffffffff);
  FUNC1(VarI8FromUI8, 0x80000000, 0);          EXPECT_OVERFLOW;
}