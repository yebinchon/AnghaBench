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
 int DATE_MAX ; 
 int DATE_MIN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  LONG64 ; 
 int /*<<< orphan*/  VarDateFromI8 ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC1(LONG64);

  FUNC0(VarDateFromI8, DATE_MIN-1); EXPECT_OVERFLOW;
  FUNC0(VarDateFromI8, DATE_MIN);   FUNC2(DATE_MIN);
  FUNC0(VarDateFromI8, -1);         FUNC2(-1.0);
  FUNC0(VarDateFromI8, 0);          FUNC2(0.0);
  FUNC0(VarDateFromI8, 1);          FUNC2(1.0);
  FUNC0(VarDateFromI8, DATE_MAX);   FUNC2(DATE_MAX);
  FUNC0(VarDateFromI8, DATE_MAX+1); EXPECT_OVERFLOW;
}