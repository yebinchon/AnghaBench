#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
struct TYPE_8__ {void* info; void* slot; int /*<<< orphan*/  startpc; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {scalar_t__ nactvar; int /*<<< orphan*/  kt; } ;
struct TYPE_6__ {size_t vtop; size_t sizevstack; TYPE_3__* vstack; int /*<<< orphan*/  L; TYPE_2__* fs; } ;
typedef  size_t MSize ;
typedef  TYPE_1__ LexState ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  TYPE_2__ FuncState ;
typedef  int /*<<< orphan*/  BCPos ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_ERR_XLIMC ; 
 scalar_t__ LJ_MAX_VSTACK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/ * NAME_BREAK ; 
 int /*<<< orphan*/  VarInfo ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static MSize FUNC7(LexState *ls, GCstr *name, uint8_t info, BCPos pc)
{
  FuncState *fs = ls->fs;
  MSize vtop = ls->vtop;
  if (FUNC0(vtop >= ls->sizevstack)) {
    if (ls->sizevstack >= LJ_MAX_VSTACK)
      FUNC1(ls, 0, LJ_ERR_XLIMC, LJ_MAX_VSTACK);
    FUNC2(ls->L, ls->vstack, ls->sizevstack, LJ_MAX_VSTACK, VarInfo);
  }
  FUNC4(name == NAME_BREAK || FUNC3(fs->kt, name) != NULL);
  /* NOBARRIER: name is anchored in fs->kt and ls->vstack is not a GCobj. */
  FUNC6(ls->vstack[vtop].name, FUNC5(name));
  ls->vstack[vtop].startpc = pc;
  ls->vstack[vtop].slot = (uint8_t)fs->nactvar;
  ls->vstack[vtop].info = info;
  ls->vtop = vtop+1;
  return vtop;
}