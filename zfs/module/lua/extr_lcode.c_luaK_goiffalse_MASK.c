#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int info; } ;
struct TYPE_7__ {int k; void* f; int /*<<< orphan*/  t; TYPE_1__ u; } ;
typedef  TYPE_2__ expdesc ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 void* NO_JUMP ; 
#define  VFALSE 130 
#define  VJMP 129 
#define  VNIL 128 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 

void FUNC4 (FuncState *fs, expdesc *e) {
  int pc;  /* pc of last jump */
  FUNC2(fs, e);
  switch (e->k) {
    case VJMP: {
      pc = e->u.info;
      break;
    }
    case VNIL: case VFALSE: {
      pc = NO_JUMP;  /* always false; do nothing */
      break;
    }
    default: {
      pc = FUNC0(fs, e, 1);
      break;
    }
  }
  FUNC1(fs, &e->t, pc);  /* insert last jump in `t' list */
  FUNC3(fs, e->f);
  e->f = NO_JUMP;
}