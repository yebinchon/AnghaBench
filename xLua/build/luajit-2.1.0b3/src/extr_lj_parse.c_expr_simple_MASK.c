#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  aux; } ;
struct TYPE_20__ {TYPE_1__ s; int /*<<< orphan*/  sval; int /*<<< orphan*/  nval; } ;
struct TYPE_23__ {TYPE_2__ u; } ;
struct TYPE_22__ {int flags; int /*<<< orphan*/  numparams; int /*<<< orphan*/  freereg; } ;
struct TYPE_21__ {int tok; int /*<<< orphan*/  linenumber; TYPE_4__* fs; int /*<<< orphan*/  tokval; int /*<<< orphan*/  L; } ;
typedef  TYPE_3__ LexState ;
typedef  TYPE_4__ FuncState ;
typedef  TYPE_5__ ExpDesc ;
typedef  int /*<<< orphan*/  BCReg ;

/* Variables and functions */
 int /*<<< orphan*/  BC_VARG ; 
 int /*<<< orphan*/  LJ_ERR_XDOTS ; 
 int /*<<< orphan*/  LJ_HASFFI ; 
 int PROTO_VARARG ; 
#define  TK_dots 134 
#define  TK_false 133 
#define  TK_function 132 
#define  TK_nil 131 
#define  TK_number 130 
#define  TK_string 129 
#define  TK_true 128 
 int /*<<< orphan*/  VCALL ; 
 int /*<<< orphan*/  VKCDATA ; 
 int /*<<< orphan*/  VKFALSE ; 
 int /*<<< orphan*/  VKNIL ; 
 int /*<<< orphan*/  VKNUM ; 
 int /*<<< orphan*/  VKSTR ; 
 int /*<<< orphan*/  VKTRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(LexState *ls, ExpDesc *v)
{
  switch (ls->tok) {
  case TK_number:
    FUNC4(v, (LJ_HASFFI && FUNC10(&ls->tokval)) ? VKCDATA : VKNUM, 0);
    FUNC3(ls->L, &v->u.nval, &ls->tokval);
    break;
  case TK_string:
    FUNC4(v, VKSTR, 0);
    v->u.sval = FUNC9(&ls->tokval);
    break;
  case TK_nil:
    FUNC4(v, VKNIL, 0);
    break;
  case TK_true:
    FUNC4(v, VKTRUE, 0);
    break;
  case TK_false:
    FUNC4(v, VKFALSE, 0);
    break;
  case TK_dots: {  /* Vararg. */
    FuncState *fs = ls->fs;
    BCReg base;
    FUNC2(ls, fs->flags & PROTO_VARARG, LJ_ERR_XDOTS);
    FUNC1(fs, 1);
    base = fs->freereg-1;
    FUNC4(v, VCALL, FUNC0(fs, BC_VARG, base, 2, fs->numparams));
    v->u.s.aux = base;
    break;
  }
  case '{':  /* Table constructor. */
    FUNC6(ls, v);
    return;
  case TK_function:
    FUNC7(ls);
    FUNC8(ls, v, 0, ls->linenumber);
    return;
  default:
    FUNC5(ls, v);
    return;
  }
  FUNC7(ls);
}