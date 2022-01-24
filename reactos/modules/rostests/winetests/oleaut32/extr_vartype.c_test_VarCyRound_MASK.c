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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXPECT_INVALID ; 
 int /*<<< orphan*/  FUNC1 (double,int) ; 
 int /*<<< orphan*/  MATHVARS1 ; 

__attribute__((used)) static void FUNC2(void)
{
  MATHVARS1;
  int right;

  FUNC1(0.5432, 5);  FUNC0(0.5432);
  FUNC1(0.5432, 4);  FUNC0(0.5432);
  FUNC1(0.5432, 3);  FUNC0(0.543);
  FUNC1(0.5432, 2);  FUNC0(0.54);
  FUNC1(0.5432, 1);  FUNC0(0.5);
  FUNC1(0.5532, 0);  FUNC0(1);
  FUNC1(0.5532, -1); EXPECT_INVALID;

  FUNC1(0.5568, 5);  FUNC0(0.5568);
  FUNC1(0.5568, 4);  FUNC0(0.5568);
  FUNC1(0.5568, 3);  FUNC0(0.557);
  FUNC1(0.5568, 2);  FUNC0(0.56);
  FUNC1(0.5568, 1);  FUNC0(0.6);
  FUNC1(0.5568, 0);  FUNC0(1);
  FUNC1(0.5568, -1); EXPECT_INVALID;

  FUNC1(0.4999, 0); FUNC0(0);
  FUNC1(0.5000, 0); FUNC0(0);
  FUNC1(0.5001, 0); FUNC0(1);
  FUNC1(1.4999, 0); FUNC0(1);
  FUNC1(1.5000, 0); FUNC0(2);
  FUNC1(1.5001, 0); FUNC0(2);
}