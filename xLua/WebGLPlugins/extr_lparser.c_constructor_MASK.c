#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ k; } ;
struct ConsControl {scalar_t__ na; scalar_t__ nh; scalar_t__ tostore; TYPE_3__ v; TYPE_3__* t; } ;
typedef  TYPE_3__ expdesc ;
struct TYPE_22__ {TYPE_2__* f; } ;
struct TYPE_18__ {char token; } ;
struct TYPE_21__ {int linenumber; TYPE_1__ t; TYPE_5__* fs; } ;
struct TYPE_19__ {int /*<<< orphan*/ * code; } ;
typedef  TYPE_4__ LexState ;
typedef  TYPE_5__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  OP_NEWTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VRELOCABLE ; 
 scalar_t__ VVOID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char,char,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,struct ConsControl*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,struct ConsControl*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,struct ConsControl*) ; 
 int FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (TYPE_4__*,char) ; 

__attribute__((used)) static void FUNC13 (LexState *ls, expdesc *t) {
  /* constructor -> '{' [ field { sep field } [sep] ] '}'
     sep -> ',' | ';' */
  FuncState *fs = ls->fs;
  int line = ls->linenumber;
  int pc = FUNC8(fs, OP_NEWTABLE, 0, 0, 0);
  struct ConsControl cc;
  cc.na = cc.nh = cc.tostore = 0;
  cc.t = t;
  FUNC6(t, VRELOCABLE, pc);
  FUNC6(&cc.v, VVOID, 0);  /* no value (yet) */
  FUNC9(ls->fs, t);  /* fix it at stack top */
  FUNC3(ls, '{');
  do {
    FUNC11(cc.v.k == VVOID || cc.tostore > 0);
    if (ls->t.token == '}') break;
    FUNC4(fs, &cc);
    FUNC5(ls, &cc);
  } while (FUNC12(ls, ',') || FUNC12(ls, ';'));
  FUNC2(ls, '}', '{', line);
  FUNC7(fs, &cc);
  FUNC0(fs->f->code[pc], FUNC10(cc.na)); /* set initial array size */
  FUNC1(fs->f->code[pc], FUNC10(cc.nh));  /* set initial table size */
}