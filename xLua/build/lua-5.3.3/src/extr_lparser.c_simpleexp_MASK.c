#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  ival; int /*<<< orphan*/  nval; } ;
struct TYPE_26__ {TYPE_1__ u; } ;
typedef  TYPE_5__ expdesc ;
struct TYPE_28__ {TYPE_4__* f; } ;
struct TYPE_23__ {int /*<<< orphan*/  ts; int /*<<< orphan*/  i; int /*<<< orphan*/  r; } ;
struct TYPE_24__ {int token; TYPE_2__ seminfo; } ;
struct TYPE_27__ {int /*<<< orphan*/  linenumber; TYPE_7__* fs; TYPE_3__ t; } ;
struct TYPE_25__ {int is_vararg; } ;
typedef  TYPE_6__ LexState ;
typedef  TYPE_7__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  OP_VARARG ; 
#define  TK_DOTS 135 
#define  TK_FALSE 134 
#define  TK_FLT 133 
#define  TK_FUNCTION 132 
#define  TK_INT 131 
#define  TK_NIL 130 
#define  TK_STRING 129 
#define  TK_TRUE 128 
 int /*<<< orphan*/  VFALSE ; 
 int /*<<< orphan*/  VKFLT ; 
 int /*<<< orphan*/  VKINT ; 
 int /*<<< orphan*/  VNIL ; 
 int /*<<< orphan*/  VTRUE ; 
 int /*<<< orphan*/  VVARARG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_5__*) ; 

__attribute__((used)) static void FUNC8 (LexState *ls, expdesc *v) {
  /* simpleexp -> FLT | INT | STRING | NIL | TRUE | FALSE | ... |
                  constructor | FUNCTION body | suffixedexp */
  switch (ls->t.token) {
    case TK_FLT: {
      FUNC4(v, VKFLT, 0);
      v->u.nval = ls->t.seminfo.r;
      break;
    }
    case TK_INT: {
      FUNC4(v, VKINT, 0);
      v->u.ival = ls->t.seminfo.i;
      break;
    }
    case TK_STRING: {
      FUNC2(ls, v, ls->t.seminfo.ts);
      break;
    }
    case TK_NIL: {
      FUNC4(v, VNIL, 0);
      break;
    }
    case TK_TRUE: {
      FUNC4(v, VTRUE, 0);
      break;
    }
    case TK_FALSE: {
      FUNC4(v, VFALSE, 0);
      break;
    }
    case TK_DOTS: {  /* vararg */
      FuncState *fs = ls->fs;
      FUNC1(ls, fs->f->is_vararg,
                      "cannot use '...' outside a vararg function");
      fs->f->is_vararg = 1;  /* function actually uses vararg */
      FUNC4(v, VVARARG, FUNC5(fs, OP_VARARG, 0, 1, 0));
      break;
    }
    case '{': {  /* constructor */
      FUNC3(ls, v);
      return;
    }
    case TK_FUNCTION: {
      FUNC6(ls);
      FUNC0(ls, v, 0, ls->linenumber);
      return;
    }
    default: {
      FUNC7(ls, v);
      return;
    }
  }
  FUNC6(ls);
}