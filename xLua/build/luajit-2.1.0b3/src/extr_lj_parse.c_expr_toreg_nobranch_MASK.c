#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ lua_Number ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_21__ {scalar_t__ info; } ;
struct TYPE_22__ {TYPE_1__ s; int /*<<< orphan*/  nval; } ;
struct TYPE_24__ {scalar_t__ k; TYPE_2__ u; } ;
struct TYPE_23__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ FuncState ;
typedef  TYPE_4__ ExpDesc ;
typedef  scalar_t__ BCReg ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  BC_KCDATA ; 
 int /*<<< orphan*/  BC_KNUM ; 
 int /*<<< orphan*/  BC_KPRI ; 
 int /*<<< orphan*/  BC_KSHORT ; 
 int /*<<< orphan*/  BC_KSTR ; 
 int /*<<< orphan*/  BC_MOV ; 
 int /*<<< orphan*/  LJ_TCDATA ; 
 int /*<<< orphan*/  PROTO_FFI ; 
 scalar_t__ VJMP ; 
 scalar_t__ VKCDATA ; 
 scalar_t__ VKNIL ; 
 scalar_t__ VKNUM ; 
 scalar_t__ VKSTR ; 
 scalar_t__ VKTRUE ; 
 scalar_t__ VNONRELOC ; 
 scalar_t__ VRELOCABLE ; 
 scalar_t__ VVOID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_4__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(FuncState *fs, ExpDesc *e, BCReg reg)
{
  BCIns ins;
  FUNC10(fs, e);
  if (e->k == VKSTR) {
    ins = FUNC0(BC_KSTR, reg, FUNC9(fs, e));
  } else if (e->k == VKNUM) {
#if LJ_DUALNUM
    cTValue *tv = expr_numtv(e);
    if (tvisint(tv) && checki16(intV(tv)))
      ins = BCINS_AD(BC_KSHORT, reg, (BCReg)(uint16_t)intV(tv));
    else
#else
    lua_Number n = FUNC11(e);
    int32_t k = FUNC14(n);
    if (FUNC5(k) && n == (lua_Number)k)
      ins = FUNC0(BC_KSHORT, reg, (BCReg)(uint16_t)k);
    else
#endif
      ins = FUNC0(BC_KNUM, reg, FUNC7(fs, e));
#if LJ_HASFFI
  } else if (e->k == VKCDATA) {
    fs->flags |= PROTO_FFI;
    ins = BCINS_AD(BC_KCDATA, reg,
		   const_gc(fs, obj2gco(cdataV(&e->u.nval)), LJ_TCDATA));
#endif
  } else if (e->k == VRELOCABLE) {
    FUNC17(FUNC3(fs, e), reg);
    goto noins;
  } else if (e->k == VNONRELOC) {
    if (reg == e->u.s.info)
      goto noins;
    ins = FUNC0(BC_MOV, reg, e->u.s.info);
  } else if (e->k == VKNIL) {
    FUNC2(fs, reg, 1);
    goto noins;
  } else if (e->k <= VKTRUE) {
    ins = FUNC0(BC_KPRI, reg, FUNC8(e));
  } else {
    FUNC15(e->k == VVOID || e->k == VJMP);
    return;
  }
  FUNC1(fs, ins);
noins:
  e->u.s.info = reg;
  e->k = VNONRELOC;
}