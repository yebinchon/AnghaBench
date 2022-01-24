#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_17__ {int lasttarget; int /*<<< orphan*/  h; int /*<<< orphan*/ * bl; scalar_t__ nactvar; scalar_t__ nlocvars; scalar_t__ np; scalar_t__ nk; scalar_t__ freereg; int /*<<< orphan*/  jpc; scalar_t__ pc; TYPE_1__* L; TYPE_3__* ls; struct TYPE_17__* prev; TYPE_2__* f; } ;
struct TYPE_16__ {int /*<<< orphan*/  source; TYPE_4__* fs; TYPE_1__* L; } ;
struct TYPE_15__ {int maxstacksize; int /*<<< orphan*/  source; } ;
typedef  TYPE_2__ Proto ;
typedef  TYPE_3__ LexState ;
typedef  TYPE_4__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  NO_JUMP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC5 (LexState *ls, FuncState *fs) {
  lua_State *L = ls->L;
  Proto *f = FUNC1(L);
  fs->f = f;
  fs->prev = ls->fs;  /* linked list of funcstates */
  fs->ls = ls;
  fs->L = L;
  ls->fs = fs;
  fs->pc = 0;
  fs->lasttarget = -1;
  fs->jpc = NO_JUMP;
  fs->freereg = 0;
  fs->nk = 0;
  fs->np = 0;
  fs->nlocvars = 0;
  fs->nactvar = 0;
  fs->bl = NULL;
  f->source = ls->source;
  f->maxstacksize = 2;  /* registers 0/1 are always valid */
  fs->h = FUNC2(L, 0, 0);
  /* anchor table of constants and prototype (to avoid being collected) */
  FUNC3(L, L->top, fs->h);
  FUNC0(L);
  FUNC4(L, L->top, f);
  FUNC0(L);
}