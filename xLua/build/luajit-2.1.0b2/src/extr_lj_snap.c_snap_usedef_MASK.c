#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_11__ {TYPE_6__* pt; TYPE_1__* L; } ;
typedef  TYPE_3__ jit_State ;
struct TYPE_13__ {int sizebc; } ;
struct TYPE_10__ {int /*<<< orphan*/  nextgc; } ;
struct TYPE_12__ {TYPE_2__ gch; } ;
struct TYPE_9__ {scalar_t__ base; int /*<<< orphan*/  openupval; } ;
typedef  TYPE_4__ GCobj ;
typedef  scalar_t__ BCReg ;
typedef  int /*<<< orphan*/  BCOp ;
typedef  int /*<<< orphan*/  const BCIns ;

/* Variables and functions */
#define  BCMbase 134 
#define  BCMdst 133 
#define  BCMfunc 132 
#define  BCMjump 131 
#define  BCMlit 130 
#define  BCMrbase 129 
#define  BCMvar 128 
 int /*<<< orphan*/  BC_CALLM ; 
 int /*<<< orphan*/  BC_CALLMT ; 
 int /*<<< orphan*/  BC_CALLT ; 
 int /*<<< orphan*/  BC_CAT ; 
 int /*<<< orphan*/  BC_FORI ; 
 int /*<<< orphan*/  BC_ISFC ; 
 int /*<<< orphan*/  BC_ISTC ; 
 int /*<<< orphan*/  BC_ITERC ; 
 int /*<<< orphan*/  BC_ITERL ; 
 int /*<<< orphan*/  BC_ITERN ; 
 int /*<<< orphan*/  BC_JFORL ; 
 int /*<<< orphan*/  BC_JITERL ; 
 int /*<<< orphan*/  BC_JLOOP ; 
 int /*<<< orphan*/  BC_KNIL ; 
 int /*<<< orphan*/  BC_RETM ; 
 int /*<<< orphan*/  BC_TSETM ; 
 int /*<<< orphan*/  BC_UCLO ; 
 int /*<<< orphan*/  BC_VARG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FORL_EXT ; 
 scalar_t__ LJ_FR2 ; 
 scalar_t__ SNAP_USEDEF_SLOTS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int,scalar_t__) ; 
 int /*<<< orphan*/  const* FUNC16 (TYPE_6__*) ; 
 size_t FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BCReg FUNC18(jit_State *J, uint8_t *udf,
			 const BCIns *pc, BCReg maxslot)
{
  BCReg s;
  GCobj *o;

  if (maxslot == 0) return 0;
#ifdef LUAJIT_USE_VALGRIND
  /* Avoid errors for harmless reads beyond maxslot. */
  memset(udf, 1, SNAP_USEDEF_SLOTS);
#else
  FUNC15(udf, 1, maxslot);
#endif

  /* Treat open upvalues as used. */
  o = FUNC13(J->L->openupval);
  while (o) {
    if (FUNC17(FUNC12(o)) < J->L->base) break;
    udf[FUNC17(FUNC12(o)) - J->L->base] = 0;
    o = FUNC13(o->gch.nextgc);
  }

#define USE_SLOT(s)		udf[(s)] &= ~1
#define DEF_SLOT(s)		udf[(s)] *= 3

  /* Scan through following bytecode and check for uses/defs. */
  FUNC14(pc >= FUNC16(J->pt) && pc < FUNC16(J->pt) + J->pt->sizebc);
  for (;;) {
    BCIns ins = *pc++;
    BCOp op = FUNC8(ins);
    switch (FUNC10(op)) {
    case BCMvar: USE_SLOT(FUNC3(ins)); break;
    default: break;
    }
    switch (FUNC11(op)) {
    case BCMvar: USE_SLOT(FUNC4(ins)); break;
    case BCMrbase:
      FUNC14(op == BC_CAT);
      for (s = FUNC3(ins); s <= FUNC4(ins); s++) USE_SLOT(s);
      for (; s < maxslot; s++) DEF_SLOT(s);
      break;
    case BCMjump:
    handle_jump: {
      BCReg minslot = FUNC2(ins);
      if (op >= BC_FORI && op <= BC_JFORL) minslot += FORL_EXT;
      else if (op >= BC_ITERL && op <= BC_JITERL) minslot += FUNC3(pc[-2])-1;
      else if (op == BC_UCLO) { pc += FUNC7(ins); break; }
      for (s = minslot; s < maxslot; s++) DEF_SLOT(s);
      return minslot < maxslot ? minslot : maxslot;
      }
    case BCMlit:
      if (op == BC_JFORL || op == BC_JITERL || op == BC_JLOOP) {
	goto handle_jump;
      } else if (FUNC6(op)) {
	BCReg top = op == BC_RETM ? maxslot : (FUNC2(ins) + FUNC5(ins)-1);
	for (s = 0; s < FUNC2(ins); s++) DEF_SLOT(s);
	for (; s < top; s++) USE_SLOT(s);
	for (; s < maxslot; s++) DEF_SLOT(s);
	return 0;
      }
      break;
    case BCMfunc: return maxslot;  /* NYI: will abort, anyway. */
    default: break;
    }
    switch (FUNC9(op)) {
    case BCMvar: USE_SLOT(FUNC2(ins)); break;
    case BCMdst:
       if (!(op == BC_ISTC || op == BC_ISFC)) DEF_SLOT(FUNC2(ins));
       break;
    case BCMbase:
      if (op >= BC_CALLM && op <= BC_VARG) {
	BCReg top = (op == BC_CALLM || op == BC_CALLMT || FUNC4(ins) == 0) ?
		    maxslot : (FUNC2(ins) + FUNC4(ins)+LJ_FR2);
	if (LJ_FR2) DEF_SLOT(FUNC2(ins)+1);
	s = FUNC2(ins) - ((op == BC_ITERC || op == BC_ITERN) ? 3 : 0);
	for (; s < top; s++) USE_SLOT(s);
	for (; s < maxslot; s++) DEF_SLOT(s);
	if (op == BC_CALLT || op == BC_CALLMT) {
	  for (s = 0; s < FUNC2(ins); s++) DEF_SLOT(s);
	  return 0;
	}
      } else if (op == BC_KNIL) {
	for (s = FUNC2(ins); s <= FUNC5(ins); s++) DEF_SLOT(s);
      } else if (op == BC_TSETM) {
	for (s = FUNC2(ins)-1; s < maxslot; s++) USE_SLOT(s);
      }
      break;
    default: break;
    }
    FUNC14(pc >= FUNC16(J->pt) && pc < FUNC16(J->pt) + J->pt->sizebc);
  }

#undef USE_SLOT
#undef DEF_SLOT

  return 0;  /* unreachable */
}