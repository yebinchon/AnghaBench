#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ slot; size_t startpc; int /*<<< orphan*/  name; } ;
typedef  TYPE_4__ VarInfo ;
struct TYPE_22__ {int vstart; int flags; scalar_t__ nactvar; TYPE_1__* prev; } ;
struct TYPE_21__ {int vtop; TYPE_3__* fs; int /*<<< orphan*/  linenumber; TYPE_4__* vstack; } ;
struct TYPE_19__ {TYPE_2__* bcbase; } ;
struct TYPE_18__ {int /*<<< orphan*/  line; } ;
struct TYPE_17__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_5__ LexState ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  TYPE_6__ FuncScope ;

/* Variables and functions */
 int /*<<< orphan*/  FSCOPE_BREAK ; 
 int /*<<< orphan*/  FSCOPE_GOLA ; 
 int FSCOPE_UPVAL ; 
 int /*<<< orphan*/  LJ_ERR_XBREAK ; 
 int /*<<< orphan*/  LJ_ERR_XLUNDEF ; 
 int /*<<< orphan*/ * NAME_BREAK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(LexState *ls, FuncScope *bl)
{
  VarInfo *v = ls->vstack + bl->vstart;
  VarInfo *ve = ls->vstack + ls->vtop;
  for (; v < ve; v++) {
    GCstr *name = FUNC7(v->name);
    if (name != NULL) {  /* Only consider remaining valid gotos/labels. */
      if (FUNC2(v)) {
	VarInfo *vg;
	FUNC5(v->name);  /* Invalidate label that goes out of scope. */
	for (vg = v+1; vg < ve; vg++)  /* Resolve pending backward gotos. */
	  if (FUNC7(vg->name) == name && FUNC1(vg)) {
	    if ((bl->flags&FSCOPE_UPVAL) && vg->slot > v->slot)
	      FUNC0(ls, vg);
	    FUNC3(ls, vg, v);
	  }
      } else if (FUNC1(v)) {
	if (bl->prev) {  /* Propagate goto or break to outer scope. */
	  bl->prev->flags |= name == NAME_BREAK ? FSCOPE_BREAK : FSCOPE_GOLA;
	  v->slot = bl->nactvar;
	  if ((bl->flags & FSCOPE_UPVAL))
	    FUNC0(ls, v);
	} else {  /* No outer scope: undefined goto label or no loop. */
	  ls->linenumber = ls->fs->bcbase[v->startpc].line;
	  if (name == NAME_BREAK)
	    FUNC4(ls, 0, LJ_ERR_XBREAK);
	  else
	    FUNC4(ls, 0, LJ_ERR_XLUNDEF, FUNC6(name));
	}
      }
    }
  }
}