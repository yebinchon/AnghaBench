#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  info; } ;
struct TYPE_17__ {TYPE_1__ s; } ;
struct TYPE_19__ {scalar_t__ k; TYPE_2__ u; } ;
struct TYPE_18__ {scalar_t__ freereg; } ;
typedef  TYPE_3__ FuncState ;
typedef  TYPE_4__ ExpDesc ;
typedef  int /*<<< orphan*/  BCPos ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BC_ISF ; 
 int /*<<< orphan*/  BC_ISFC ; 
 int /*<<< orphan*/  BC_IST ; 
 int /*<<< orphan*/  BC_ISTC ; 
 scalar_t__ BC_NOT ; 
 int /*<<< orphan*/  NO_REG ; 
 scalar_t__ VNONRELOC ; 
 scalar_t__ VRELOCABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_4__*,scalar_t__) ; 

__attribute__((used)) static BCPos FUNC9(FuncState *fs, ExpDesc *e, int cond)
{
  BCPos pc;
  if (e->k == VRELOCABLE) {
    BCIns *ip = FUNC5(fs, e);
    if (FUNC2(*ip) == BC_NOT) {
      *ip = FUNC0(cond ? BC_ISF : BC_IST, 0, FUNC1(*ip));
      return FUNC4(fs);
    }
  }
  if (e->k != VNONRELOC) {
    FUNC6(fs, 1);
    FUNC8(fs, e, fs->freereg-1);
  }
  FUNC3(fs, cond ? BC_ISTC : BC_ISFC, NO_REG, e->u.s.info);
  pc = FUNC4(fs);
  FUNC7(fs, e);
  return pc;
}