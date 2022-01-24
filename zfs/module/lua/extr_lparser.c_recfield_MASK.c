#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct ConsControl {TYPE_3__* t; int /*<<< orphan*/  nh; } ;
typedef  int /*<<< orphan*/  expdesc ;
struct TYPE_18__ {int freereg; } ;
struct TYPE_14__ {scalar_t__ token; } ;
struct TYPE_17__ {TYPE_1__ t; TYPE_5__* fs; } ;
struct TYPE_15__ {int /*<<< orphan*/  info; } ;
struct TYPE_16__ {TYPE_2__ u; } ;
typedef  TYPE_4__ LexState ;
typedef  TYPE_5__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_INT ; 
 int /*<<< orphan*/  OP_SETTABLE ; 
 scalar_t__ TK_NAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7 (LexState *ls, struct ConsControl *cc) {
  /* recfield -> (NAME | `['exp1`]') = exp1 */
  FuncState *fs = ls->fs;
  int reg = ls->fs->freereg;
  expdesc key, val;
  int rkkey;
  if (ls->t.token == TK_NAME) {
    FUNC0(fs, cc->nh, MAX_INT, "items in a constructor");
    FUNC1(ls, &key);
  }
  else  /* ls->t.token == '[' */
    FUNC6(ls, &key);
  cc->nh++;
  FUNC2(ls, '=');
  rkkey = FUNC5(fs, &key);
  FUNC3(ls, &val);
  FUNC4(fs, OP_SETTABLE, cc->t->u.info, rkkey, FUNC5(fs, &val));
  fs->freereg = reg;  /* free registers */
}