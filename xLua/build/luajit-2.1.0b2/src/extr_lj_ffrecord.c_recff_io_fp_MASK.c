#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ jit_State ;
typedef  int int32_t ;
struct TYPE_10__ {int /*<<< orphan*/ * gcroot; } ;
typedef  int /*<<< orphan*/  TRef ;

/* Variables and functions */
 int /*<<< orphan*/  IRFL_UDATA_FILE ; 
 int /*<<< orphan*/  IRFL_UDATA_UDTYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_PTR ; 
 int /*<<< orphan*/  IRT_U8 ; 
 int /*<<< orphan*/  IRT_UDATA ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  IR_FLOAD ; 
 int /*<<< orphan*/  IR_NE ; 
 int /*<<< orphan*/  IR_XLOAD ; 
 TYPE_7__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  LJ_TRERR_BADTYPE ; 
 int /*<<< orphan*/  UDTYPE_IO_FILE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static TRef FUNC10(jit_State *J, TRef *udp, int32_t id)
{
  TRef tr, ud, fp;
  if (id) {  /* io.func() */
    tr = FUNC7(J, &FUNC3(J)->gcroot[id]);
    ud = FUNC4(FUNC0(IR_XLOAD, IRT_UDATA), tr, 0);
  } else {  /* fp:method() */
    ud = J->base[0];
    if (!FUNC9(ud))
      FUNC8(J, LJ_TRERR_BADTYPE);
    tr = FUNC4(FUNC0(IR_FLOAD, IRT_U8), ud, IRFL_UDATA_UDTYPE);
    FUNC4(FUNC2(IR_EQ), tr, FUNC5(J, UDTYPE_IO_FILE));
  }
  *udp = ud;
  fp = FUNC4(FUNC0(IR_FLOAD, IRT_PTR), ud, IRFL_UDATA_FILE);
  FUNC4(FUNC1(IR_NE, IRT_PTR), fp, FUNC6(J, IRT_PTR));
  return fp;
}