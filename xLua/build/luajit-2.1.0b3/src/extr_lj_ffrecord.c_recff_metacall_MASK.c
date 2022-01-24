#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  L; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ jit_State ;
struct TYPE_11__ {int nres; int /*<<< orphan*/ * argv; } ;
struct TYPE_10__ {int /*<<< orphan*/  mobjv; int /*<<< orphan*/  mobj; int /*<<< orphan*/  tabv; int /*<<< orphan*/  tab; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_2__ RecordIndex ;
typedef  TYPE_3__ RecordFFData ;
typedef  int /*<<< orphan*/  MMS ;

/* Variables and functions */
 int LJ_FR2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  recff_metacall_cp ; 

__attribute__((used)) static int FUNC4(jit_State *J, RecordFFData *rd, MMS mm)
{
  RecordIndex ix;
  ix.tab = J->base[0];
  FUNC0(J->L, &ix.tabv, &rd->argv[0]);
  if (FUNC2(J, &ix, mm)) {  /* Has metamethod? */
    int errcode;
    TValue argv0;
    /* Temporarily insert metamethod below object. */
    J->base[1+LJ_FR2] = J->base[0];
    J->base[0] = ix.mobj;
    FUNC0(J->L, &argv0, &rd->argv[0]);
    FUNC0(J->L, &rd->argv[1+LJ_FR2], &rd->argv[0]);
    FUNC0(J->L, &rd->argv[0], &ix.mobjv);
    /* Need to protect lj_record_tailcall because it may throw. */
    errcode = FUNC3(J->L, NULL, J, recff_metacall_cp);
    /* Always undo Lua stack changes to avoid confusing the interpreter. */
    FUNC0(J->L, &rd->argv[0], &argv0);
    if (errcode)
      FUNC1(J->L, errcode);  /* Propagate errors. */
    rd->nres = -1;  /* Pending call. */
    return 1;  /* Tailcalled to metamethod. */
  }
  return 0;
}