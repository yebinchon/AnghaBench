#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {scalar_t__ k; } ;
struct ConsControl {scalar_t__ na; scalar_t__ nh; scalar_t__ tostore; TYPE_4__ v; TYPE_4__* t; } ;
typedef  TYPE_4__ expdesc ;
struct TYPE_26__ {TYPE_3__* f; } ;
struct TYPE_22__ {char token; } ;
struct TYPE_21__ {char token; } ;
struct TYPE_25__ {int linenumber; TYPE_2__ lookahead; TYPE_1__ t; TYPE_6__* fs; } ;
struct TYPE_23__ {int /*<<< orphan*/ * code; } ;
typedef  TYPE_5__ LexState ;
typedef  TYPE_6__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  OP_NEWTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TK_NAME 128 
 scalar_t__ VRELOCABLE ; 
 scalar_t__ VVOID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char,char,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,struct ConsControl*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,struct ConsControl*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,struct ConsControl*) ; 
 int FUNC8 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,struct ConsControl*) ; 
 scalar_t__ FUNC14 (TYPE_5__*,char) ; 

__attribute__((used)) static void FUNC15 (LexState *ls, expdesc *t) {
  /* constructor -> ?? */
  FuncState *fs = ls->fs;
  int line = ls->linenumber;
  int pc = FUNC8(fs, OP_NEWTABLE, 0, 0, 0);
  struct ConsControl cc;
  cc.na = cc.nh = cc.tostore = 0;
  cc.t = t;
  FUNC5(t, VRELOCABLE, pc);
  FUNC5(&cc.v, VVOID, 0);  /* no value (yet) */
  FUNC9(ls->fs, t);  /* fix it at stack top (for gc) */
  FUNC3(ls, '{');
  do {
    FUNC12(cc.v.k == VVOID || cc.tostore > 0);
    if (ls->t.token == '}') break;
    FUNC4(fs, &cc);
    switch(ls->t.token) {
      case TK_NAME: {  /* may be listfields or recfields */
        FUNC11(ls);
        if (ls->lookahead.token != '=')  /* expression? */
          FUNC7(ls, &cc);
        else
          FUNC13(ls, &cc);
        break;
      }
      case '[': {  /* constructor_item -> recfield */
        FUNC13(ls, &cc);
        break;
      }
      default: {  /* constructor_part -> listfield */
        FUNC7(ls, &cc);
        break;
      }
    }
  } while (FUNC14(ls, ',') || FUNC14(ls, ';'));
  FUNC2(ls, '}', '{', line);
  FUNC6(fs, &cc);
  FUNC0(fs->f->code[pc], FUNC10(cc.na)); /* set initial array size */
  FUNC1(fs->f->code[pc], FUNC10(cc.nh));  /* set initial table size */
}