#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {int info; } ;
struct TYPE_28__ {scalar_t__ k; TYPE_3__ u; } ;
typedef  TYPE_4__ expdesc ;
struct TYPE_30__ {int freereg; } ;
struct TYPE_25__ {int /*<<< orphan*/  ts; } ;
struct TYPE_26__ {int token; TYPE_1__ seminfo; } ;
struct TYPE_29__ {TYPE_2__ t; TYPE_6__* fs; } ;
typedef  TYPE_5__ LexState ;
typedef  TYPE_6__ FuncState ;

/* Variables and functions */
 int LUA_MULTRET ; 
 int /*<<< orphan*/  OP_CALL ; 
#define  TK_STRING 128 
 int /*<<< orphan*/  VCALL ; 
 scalar_t__ VNONRELOC ; 
 scalar_t__ VVOID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char,char,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13 (LexState *ls, expdesc *f, int line) {
  FuncState *fs = ls->fs;
  expdesc args;
  int base, nparams;
  switch (ls->t.token) {
    case '(': {  /* funcargs -> '(' [ explist ] ')' */
      FUNC10(ls);
      if (ls->t.token == ')')  /* arg list is empty? */
        args.k = VVOID;
      else {
        FUNC3(ls, &args);
        FUNC9(fs, &args);
      }
      FUNC0(ls, ')', '(', line);
      break;
    }
    case '{': {  /* funcargs -> constructor */
      FUNC2(ls, &args);
      break;
    }
    case TK_STRING: {  /* funcargs -> STRING */
      FUNC1(ls, &args, ls->t.seminfo.ts);
      FUNC10(ls);  /* must use 'seminfo' before 'next' */
      break;
    }
    default: {
      FUNC11(ls, "function arguments expected");
    }
  }
  FUNC12(f->k == VNONRELOC);
  base = f->u.info;  /* base register for call */
  if (FUNC4(args.k))
    nparams = LUA_MULTRET;  /* open call */
  else {
    if (args.k != VVOID)
      FUNC7(fs, &args);  /* close last argument */
    nparams = fs->freereg - (base+1);
  }
  FUNC5(f, VCALL, FUNC6(fs, OP_CALL, base, nparams+1, 2));
  FUNC8(fs, line);
  fs->freereg = base+1;  /* call remove function and arguments and leaves
                            (unless changed) one result */
}