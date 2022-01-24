#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int info; } ;
struct TYPE_8__ {int k; void* t; int /*<<< orphan*/  f; TYPE_1__ u; } ;
typedef  TYPE_2__ expdesc ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 void* NO_JUMP ; 
#define  VJMP 132 
#define  VK 131 
#define  VKFLT 130 
#define  VKINT 129 
#define  VTRUE 128 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 

void FUNC5 (FuncState *fs, expdesc *e) {
  int pc;  /* pc of new jump */
  FUNC2(fs, e);
  switch (e->k) {
    case VJMP: {  /* condition? */
      FUNC4(fs, e);  /* jump when it is false */
      pc = e->u.info;  /* save jump position */
      break;
    }
    case VK: case VKFLT: case VKINT: case VTRUE: {
      pc = NO_JUMP;  /* always true; do nothing */
      break;
    }
    default: {
      pc = FUNC0(fs, e, 0);  /* jump when false */
      break;
    }
  }
  FUNC1(fs, &e->f, pc);  /* insert new jump in false list */
  FUNC3(fs, e->t);  /* true list jumps to here (to go through) */
  e->t = NO_JUMP;
}