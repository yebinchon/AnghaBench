#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_12__ {scalar_t__ info; scalar_t__ aux; } ;
struct TYPE_13__ {int /*<<< orphan*/ * sval; TYPE_1__ s; } ;
struct TYPE_15__ {TYPE_2__ u; int /*<<< orphan*/  k; } ;
struct TYPE_14__ {struct TYPE_14__* prev; scalar_t__* varmap; } ;
typedef  scalar_t__ MSize ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  TYPE_3__ FuncState ;
typedef  TYPE_4__ ExpDesc ;
typedef  size_t BCReg ;

/* Variables and functions */
 int /*<<< orphan*/  VGLOBAL ; 
 int /*<<< orphan*/  VLOCAL ; 
 int /*<<< orphan*/  VUPVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,size_t) ; 
 size_t FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_3__*,scalar_t__,TYPE_4__*) ; 

__attribute__((used)) static MSize FUNC4(FuncState *fs, GCstr *name, ExpDesc *e, int first)
{
  if (fs) {
    BCReg reg = FUNC2(fs, name);
    if ((int32_t)reg >= 0) {  /* Local in this function? */
      FUNC0(e, VLOCAL, reg);
      if (!first)
	FUNC1(fs, reg);  /* Scope now has an upvalue. */
      return (MSize)(e->u.s.aux = (uint32_t)fs->varmap[reg]);
    } else {
      MSize vidx = FUNC4(fs->prev, name, e, 0);  /* Var in outer func? */
      if ((int32_t)vidx >= 0) {  /* Yes, make it an upvalue here. */
	e->u.s.info = (uint8_t)FUNC3(fs, vidx, e);
	e->k = VUPVAL;
	return vidx;
      }
    }
  } else {  /* Not found in any function, must be a global. */
    FUNC0(e, VGLOBAL, 0);
    e->u.sval = name;
  }
  return (MSize)-1;  /* Global. */
}