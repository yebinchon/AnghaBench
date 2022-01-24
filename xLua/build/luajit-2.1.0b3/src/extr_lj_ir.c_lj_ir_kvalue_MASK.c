#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_11__ {int /*<<< orphan*/  u64; } ;
struct TYPE_10__ {int /*<<< orphan*/  n; } ;
struct TYPE_9__ {int o; int /*<<< orphan*/  t; int /*<<< orphan*/  i; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  GCcdata ;

/* Variables and functions */
 int /*<<< orphan*/  CTID_INT64 ; 
#define  IR_KGC 135 
#define  IR_KINT 134 
#define  IR_KINT64 133 
#define  IR_KKPTR 132 
#define  IR_KNULL 131 
#define  IR_KNUM 130 
#define  IR_KPRI 129 
#define  IR_KPTR 128 
 int IR_KSLOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 TYPE_6__* FUNC3 (TYPE_1__ const*) ; 
 TYPE_4__* FUNC4 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC15(lua_State *L, TValue *tv, const IRIns *ir)
{
  FUNC0(L);
  FUNC8(ir->o != IR_KSLOT);  /* Common mistake. */
  switch (ir->o) {
  case IR_KPRI: FUNC14(tv, FUNC6(ir->t)); break;
  case IR_KINT: FUNC11(tv, ir->i); break;
  case IR_KGC: FUNC10(L, tv, FUNC2(ir), FUNC6(ir->t)); break;
  case IR_KPTR: case IR_KKPTR: FUNC12(tv, FUNC5(ir)); break;
  case IR_KNULL: FUNC12(tv, NULL); break;
  case IR_KNUM: FUNC13(tv, FUNC4(ir)->n); break;
#if LJ_HASFFI
  case IR_KINT64: {
    GCcdata *cd = lj_cdata_new_(L, CTID_INT64, 8);
    *(uint64_t *)cdataptr(cd) = ir_kint64(ir)->u64;
    setcdataV(L, tv, cd);
    break;
    }
#endif
  default: FUNC8(0); break;
  }
}