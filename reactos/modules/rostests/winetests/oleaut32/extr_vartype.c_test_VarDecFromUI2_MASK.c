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
 int /*<<< orphan*/  EXPECTDECI ; 
 int /*<<< orphan*/  USHORT ; 
 int /*<<< orphan*/  VarDecFromUI2 ; 

__attribute__((used)) static void FUNC2(void)
{
  FUNC1(USHORT);
  int i;

  for (i = 0; i < 65536; i++)
  {
    FUNC0(VarDecFromUI2,i); EXPECTDECI;
  }
}