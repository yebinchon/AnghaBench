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
struct TYPE_5__ {int /*<<< orphan*/  sval; } ;
struct TYPE_6__ {scalar_t__ k; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  TYPE_2__ ExpDesc ;
typedef  int /*<<< orphan*/  BCReg ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_TSTR ; 
 scalar_t__ VGLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BCReg FUNC4(FuncState *fs, ExpDesc *e)
{
  FUNC2(FUNC1(e) || e->k == VGLOBAL);
  return FUNC0(fs, FUNC3(e->u.sval), LJ_TSTR);
}