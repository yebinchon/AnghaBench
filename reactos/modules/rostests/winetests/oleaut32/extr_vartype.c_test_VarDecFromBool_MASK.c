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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SHORT ; 
 int /*<<< orphan*/  VarDecFromBool ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC1(SHORT);
  int i;

  /* Test all possible type values. Note that the result is reduced to 0 or -1 */
  for (i = -32768; i < 0; i++)
  {
    FUNC0(VarDecFromBool,i);
    if (i)
      FUNC2(0,0x80,0,1);
    else
      FUNC2(0,0,0,0);
  }
}