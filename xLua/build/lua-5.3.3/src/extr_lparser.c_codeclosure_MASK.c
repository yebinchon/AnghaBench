#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  expdesc ;
struct TYPE_9__ {scalar_t__ np; } ;
struct TYPE_8__ {TYPE_1__* fs; } ;
struct TYPE_7__ {TYPE_3__* prev; } ;
typedef  TYPE_2__ LexState ;
typedef  TYPE_3__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  OP_CLOSURE ; 
 int /*<<< orphan*/  VRELOCABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (LexState *ls, expdesc *v) {
  FuncState *fs = ls->fs->prev;
  FUNC0(v, VRELOCABLE, FUNC1(fs, OP_CLOSURE, 0, fs->np - 1));
  FUNC2(fs, v);  /* fix it at the last register */
}