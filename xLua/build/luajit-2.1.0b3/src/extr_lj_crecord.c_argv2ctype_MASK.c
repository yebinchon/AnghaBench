#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_2__ jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_19__ {scalar_t__ top; } ;
struct TYPE_15__ {scalar_t__ id; } ;
struct TYPE_18__ {int mode; TYPE_1__ val; TYPE_8__* cts; int /*<<< orphan*/ * param; void* p; void* srcname; int /*<<< orphan*/  L; } ;
struct TYPE_17__ {scalar_t__ ctypeid; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  TYPE_3__ GCcdata ;
typedef  scalar_t__ CTypeID ;
typedef  TYPE_4__ CPState ;

/* Variables and functions */
 int CPARSE_MODE_ABSTRACT ; 
 int CPARSE_MODE_NOIMPLICIT ; 
 scalar_t__ CTID_CTYPEID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_STR ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  LJ_TRERR_BADTYPE ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static CTypeID FUNC12(jit_State *J, TRef tr, cTValue *o)
{
  if (FUNC11(tr)) {
    GCstr *s = FUNC9(o);
    CPState cp;
    CTypeID oldtop;
    /* Specialize to the string containing the C type declaration. */
    FUNC5(FUNC0(IR_EQ, IRT_STR), tr, FUNC7(J, s));
    cp.L = J->L;
    cp.cts = FUNC4(FUNC1(J));
    oldtop = cp.cts->top;
    cp.srcname = FUNC10(s);
    cp.p = FUNC10(s);
    cp.param = NULL;
    cp.mode = CPARSE_MODE_ABSTRACT|CPARSE_MODE_NOIMPLICIT;
    if (FUNC6(&cp) || cp.cts->top > oldtop)  /* Avoid new struct defs. */
      FUNC8(J, LJ_TRERR_BADTYPE);
    return cp.val.id;
  } else {
    GCcdata *cd = FUNC2(J, tr, o);
    return cd->ctypeid == CTID_CTYPEID ? FUNC3(J, cd, tr) :
					cd->ctypeid;
  }
}