#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ jit_State ;
typedef  int int32_t ;
struct TYPE_13__ {int /*<<< orphan*/ * gcroot; } ;
struct TYPE_12__ {int /*<<< orphan*/ * gcroot; } ;
typedef  int /*<<< orphan*/  TRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRFL_UDATA_FILE ; 
 int /*<<< orphan*/  IRFL_UDATA_UDTYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_PTR ; 
 int /*<<< orphan*/  IRT_U8 ; 
 int /*<<< orphan*/  IRT_UDATA ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  IR_FLOAD ; 
 int /*<<< orphan*/  IR_NE ; 
 int /*<<< orphan*/  IR_XLOAD ; 
 TYPE_9__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  LJ_TRERR_BADTYPE ; 
 int /*<<< orphan*/  UDTYPE_IO_FILE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__ g ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static TRef FUNC12(jit_State *J, TRef *udp, int32_t id)
{
  TRef tr, ud, fp;
  if (id) {  /* io.func() */
#if LJ_GC64
    /* TODO: fix ARM32 asm_fload(), so we can use this for all archs. */
    ud = lj_ir_ggfload(J, IRT_UDATA, GG_OFS(g.gcroot[id]));
#else
    tr = FUNC9(J, &FUNC4(J)->gcroot[id]);
    ud = FUNC5(FUNC1(IR_XLOAD, IRT_UDATA), tr, 0);
#endif
  } else {  /* fp:method() */
    ud = J->base[0];
    if (!FUNC11(ud))
      FUNC10(J, LJ_TRERR_BADTYPE);
    tr = FUNC5(FUNC1(IR_FLOAD, IRT_U8), ud, IRFL_UDATA_UDTYPE);
    FUNC5(FUNC3(IR_EQ), tr, FUNC7(J, UDTYPE_IO_FILE));
  }
  *udp = ud;
  fp = FUNC5(FUNC1(IR_FLOAD, IRT_PTR), ud, IRFL_UDATA_FILE);
  FUNC5(FUNC2(IR_NE, IRT_PTR), fp, FUNC8(J, IRT_PTR));
  return fp;
}