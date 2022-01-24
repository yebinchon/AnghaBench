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
 int /*<<< orphan*/  SHORT ; 
 int /*<<< orphan*/  VarUI8FromI2 ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC1(SHORT);
  int i;

  for (i = -32768; i < 32768; i++)
  {
    FUNC0(VarUI8FromI2,i);
    if (i < 0)
      EXPECT_OVERFLOW;
    else
      FUNC2(i);
  }
}