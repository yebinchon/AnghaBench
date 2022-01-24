#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ base; scalar_t__ top; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_15__ {int nupvalues; int /*<<< orphan*/ * upvalue; } ;
struct TYPE_18__ {TYPE_1__ c; } ;
struct TYPE_17__ {int type; int /*<<< orphan*/ * fp; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  MSize ;
typedef  TYPE_3__ IOFileUD ;
typedef  TYPE_4__ GCfunc ;

/* Variables and functions */
 int IOFILE_FLAG_CLOSE ; 
 int /*<<< orphan*/  LJ_ERR_IOCLFL ; 
 int /*<<< orphan*/  LJ_ERR_STKOV ; 
 int LUAI_MAXCSTACK ; 
 TYPE_4__* FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(lua_State *L)
{
  GCfunc *fn = FUNC0(L);
  IOFileUD *iof = FUNC11(FUNC10(&fn->c.upvalue[0]));
  int n = fn->c.nupvalues - 1;
  if (iof->fp == NULL)
    FUNC4(L, LJ_ERR_IOCLFL);
  L->top = L->base;
  if (n) {  /* Copy upvalues with options to stack. */
    if (n > LUAI_MAXCSTACK)
      FUNC4(L, LJ_ERR_STKOV);
    FUNC6(L, (MSize)n);
    FUNC7(L->top, &fn->c.upvalue[1], n*sizeof(TValue));
    L->top += n;
  }
  n = FUNC3(L, iof->fp, 0);
  if (FUNC1(iof->fp))
    FUNC5(L, FUNC8(L->top-2));
  if (FUNC9(L->base) && (iof->type & IOFILE_FLAG_CLOSE)) {
    FUNC2(L, iof);  /* Return values are ignored. */
    return 0;
  }
  return n;
}