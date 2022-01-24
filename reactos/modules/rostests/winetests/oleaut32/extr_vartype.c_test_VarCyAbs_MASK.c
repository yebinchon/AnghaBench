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
 int /*<<< orphan*/  FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  MATHVARS1 ; 
 int /*<<< orphan*/  VarCyAbs ; 

__attribute__((used)) static void FUNC3(void)
{
  MATHVARS1;

  FUNC2(VarCyAbs, 0.5);  FUNC0(0.5);
  FUNC2(VarCyAbs, -0.5); FUNC0(0.5);
  FUNC2(VarCyAbs, 922337203685476.0);  FUNC1(2147483647ul,4294951488ul);
  FUNC2(VarCyAbs, -922337203685476.0); FUNC1(2147483647ul,4294951488ul);
}