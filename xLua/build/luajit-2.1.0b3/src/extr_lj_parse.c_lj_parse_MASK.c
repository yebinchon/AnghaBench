#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_23__ {int /*<<< orphan*/ * prev; int /*<<< orphan*/  flags; scalar_t__ bclim; int /*<<< orphan*/ * bcbase; scalar_t__ numparams; scalar_t__ linedefined; } ;
struct TYPE_22__ {scalar_t__ sizeuv; } ;
struct TYPE_21__ {scalar_t__ tok; int /*<<< orphan*/ * fs; int /*<<< orphan*/  linenumber; scalar_t__ level; int /*<<< orphan*/  chunkname; int /*<<< orphan*/  chunkarg; TYPE_1__* L; } ;
typedef  TYPE_2__ LexState ;
typedef  TYPE_3__ GCproto ;
typedef  TYPE_4__ FuncState ;
typedef  int /*<<< orphan*/  FuncScope ;

/* Variables and functions */
 int /*<<< orphan*/  BC_FUNCV ; 
 int /*<<< orphan*/  PROTO_VARARG ; 
 scalar_t__ TK_eof ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

GCproto *FUNC12(LexState *ls)
{
  FuncState fs;
  FuncScope bl;
  GCproto *pt;
  lua_State *L = ls->L;
#ifdef LUAJIT_DISABLE_DEBUGINFO
  ls->chunkname = lj_str_newlit(L, "=");
#else
  ls->chunkname = FUNC8(L, ls->chunkarg);
#endif
  FUNC11(L, L->top, ls->chunkname);  /* Anchor chunkname string. */
  FUNC5(L);
  ls->level = 0;
  FUNC3(ls, &fs);
  fs.linedefined = 0;
  fs.numparams = 0;
  fs.bcbase = NULL;
  fs.bclim = 0;
  fs.flags |= PROTO_VARARG;  /* Main chunk is always a vararg func. */
  FUNC4(&fs, &bl, 0);
  FUNC0(&fs, BC_FUNCV, 0, 0);  /* Placeholder. */
  FUNC6(ls);  /* Read-ahead first token. */
  FUNC10(ls);
  if (ls->tok != TK_eof)
    FUNC1(ls, TK_eof);
  pt = FUNC2(ls, ls->linenumber);
  L->top--;  /* Drop chunkname. */
  FUNC9(fs.prev == NULL);
  FUNC9(ls->fs == NULL);
  FUNC9(pt->sizeuv == 0);
  return pt;
}