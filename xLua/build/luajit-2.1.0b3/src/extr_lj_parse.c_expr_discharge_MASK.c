#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_6__ {int info; int aux; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
struct TYPE_8__ {scalar_t__ k; TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  TYPE_3__ ExpDesc ;
typedef  int BCReg ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int BCMAX_C ; 
 int /*<<< orphan*/  BC_GGET ; 
 int /*<<< orphan*/  BC_TGETB ; 
 int /*<<< orphan*/  BC_TGETS ; 
 int /*<<< orphan*/  BC_TGETV ; 
 int /*<<< orphan*/  BC_UGET ; 
 scalar_t__ VCALL ; 
 scalar_t__ VGLOBAL ; 
 scalar_t__ VINDEXED ; 
 scalar_t__ VLOCAL ; 
 void* VNONRELOC ; 
 scalar_t__ VRELOCABLE ; 
 scalar_t__ VUPVAL ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(FuncState *fs, ExpDesc *e)
{
  BCIns ins;
  if (e->k == VUPVAL) {
    ins = FUNC1(BC_UGET, 0, e->u.s.info);
  } else if (e->k == VGLOBAL) {
    ins = FUNC1(BC_GGET, 0, FUNC4(fs, e));
  } else if (e->k == VINDEXED) {
    BCReg rc = e->u.s.aux;
    if ((int32_t)rc < 0) {
      ins = FUNC0(BC_TGETS, 0, e->u.s.info, ~rc);
    } else if (rc > BCMAX_C) {
      ins = FUNC0(BC_TGETB, 0, e->u.s.info, rc-(BCMAX_C+1));
    } else {
      FUNC3(fs, rc);
      ins = FUNC0(BC_TGETV, 0, e->u.s.info, rc);
    }
    FUNC3(fs, e->u.s.info);
  } else if (e->k == VCALL) {
    e->u.s.info = e->u.s.aux;
    e->k = VNONRELOC;
    return;
  } else if (e->k == VLOCAL) {
    e->k = VNONRELOC;
    return;
  } else {
    return;
  }
  e->u.s.info = FUNC2(fs, ins);
  e->k = VRELOCABLE;
}