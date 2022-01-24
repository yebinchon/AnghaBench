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
struct TYPE_13__ {int /*<<< orphan*/ * top; int /*<<< orphan*/ * base; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_12__ {scalar_t__ id; } ;
struct TYPE_15__ {int mode; TYPE_1__ val; int /*<<< orphan*/ * param; void* p; void* srcname; int /*<<< orphan*/ * cts; TYPE_2__* L; } ;
struct TYPE_14__ {scalar_t__ ctypeid; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  TYPE_3__ GCcdata ;
typedef  scalar_t__ CTypeID ;
typedef  int /*<<< orphan*/  CTState ;
typedef  TYPE_4__ CPState ;

/* Variables and functions */
 int CPARSE_MODE_ABSTRACT ; 
 int CPARSE_MODE_NOIMPLICIT ; 
 scalar_t__ CTID_CTYPEID ; 
 int /*<<< orphan*/  LJ_ERR_FFI_NUMPARAM ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static CTypeID FUNC10(lua_State *L, CTState *cts, TValue *param)
{
  TValue *o = L->base;
  if (!(o < L->top)) {
  err_argtype:
    FUNC4(L, 1, "C type");
  }
  if (FUNC9(o)) {  /* Parse an abstract C type declaration. */
    GCstr *s = FUNC6(o);
    CPState cp;
    int errcode;
    cp.L = L;
    cp.cts = cts;
    cp.srcname = FUNC7(s);
    cp.p = FUNC7(s);
    cp.param = param;
    cp.mode = CPARSE_MODE_ABSTRACT|CPARSE_MODE_NOIMPLICIT;
    errcode = FUNC2(&cp);
    if (errcode) FUNC5(L, errcode);  /* Propagate errors. */
    return cp.val.id;
  } else {
    GCcdata *cd;
    if (!FUNC8(o)) goto err_argtype;
    if (param && param < L->top) FUNC3(L, 1, LJ_ERR_FFI_NUMPARAM);
    cd = FUNC0(o);
    return cd->ctypeid == CTID_CTYPEID ? *(CTypeID *)FUNC1(cd) : cd->ctypeid;
  }
}