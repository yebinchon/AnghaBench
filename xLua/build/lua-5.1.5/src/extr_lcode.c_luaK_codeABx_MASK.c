#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* ls; } ;
struct TYPE_5__ {int /*<<< orphan*/  lastline; } ;
typedef  int /*<<< orphan*/  OpCode ;
typedef  TYPE_2__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned int) ; 
 scalar_t__ OpArgN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ iABx ; 
 scalar_t__ iAsBx ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5 (FuncState *fs, OpCode o, int a, unsigned int bc) {
  FUNC4(FUNC2(o) == iABx || FUNC2(o) == iAsBx);
  FUNC4(FUNC1(o) == OpArgN);
  return FUNC3(fs, FUNC0(o, a, bc), fs->ls->lastline);
}