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
typedef  int /*<<< orphan*/  OpCode ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int MAXARG_A ; 
 unsigned int MAXARG_Bx ; 
 scalar_t__ OpArgN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ iABx ; 
 scalar_t__ iAsBx ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5 (FuncState *fs, OpCode o, int a, unsigned int bc) {
  FUNC4(FUNC2(o) == iABx || FUNC2(o) == iAsBx);
  FUNC4(FUNC1(o) == OpArgN);
  FUNC4(a <= MAXARG_A && bc <= MAXARG_Bx);
  return FUNC3(fs, FUNC0(o, a, bc));
}