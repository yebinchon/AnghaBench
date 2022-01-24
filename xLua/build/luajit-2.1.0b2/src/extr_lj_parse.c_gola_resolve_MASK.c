#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ slot; size_t startpc; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ VarInfo ;
struct TYPE_20__ {TYPE_1__* bcbase; } ;
struct TYPE_19__ {int /*<<< orphan*/  name; } ;
struct TYPE_18__ {int vstart; } ;
struct TYPE_17__ {TYPE_7__* fs; int /*<<< orphan*/  linenumber; TYPE_2__* vstack; } ;
struct TYPE_15__ {int /*<<< orphan*/  line; } ;
typedef  int MSize ;
typedef  TYPE_3__ LexState ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  TYPE_4__ FuncScope ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_XGSCOPE ; 
 int /*<<< orphan*/ * NAME_BREAK ; 
 uintptr_t VARNAME__MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_5__ FUNC7 (TYPE_3__*,TYPE_7__*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(LexState *ls, FuncScope *bl, MSize idx)
{
  VarInfo *vg = ls->vstack + bl->vstart;
  VarInfo *vl = ls->vstack + idx;
  for (; vg < vl; vg++)
    if (FUNC0(vg->name, vl->name) && FUNC1(vg)) {
      if (vg->slot < vl->slot) {
	GCstr *name = FUNC6(FUNC7(ls, ls->fs, vg->slot).name);
	FUNC4((uintptr_t)name >= VARNAME__MAX);
	ls->linenumber = ls->fs->bcbase[vg->startpc].line;
	FUNC4(FUNC6(vg->name) != NAME_BREAK);
	FUNC3(ls, 0, LJ_ERR_XGSCOPE,
		     FUNC5(FUNC6(vg->name)), FUNC5(name));
      }
      FUNC2(ls, vg, vl);
    }
}