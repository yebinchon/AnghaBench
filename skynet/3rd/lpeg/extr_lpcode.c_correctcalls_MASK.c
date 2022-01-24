#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* p; } ;
struct TYPE_10__ {scalar_t__ code; int key; } ;
struct TYPE_11__ {TYPE_2__ i; } ;
struct TYPE_9__ {TYPE_3__* code; } ;
typedef  TYPE_3__ Instruction ;
typedef  TYPE_4__ CompileState ;

/* Variables and functions */
 scalar_t__ ICall ; 
 scalar_t__ IJmp ; 
 scalar_t__ IOpenCall ; 
 scalar_t__ IRet ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC4 (CompileState *compst, int *positions,
                          int from, int to) {
  int i;
  Instruction *code = compst->p->code;
  for (i = from; i < to; i += FUNC3(&code[i])) {
    if (code[i].i.code == IOpenCall) {
      int n = code[i].i.key;  /* rule number */
      int rule = positions[n];  /* rule position */
      FUNC0(rule == from || code[rule - 1].i.code == IRet);
      if (code[FUNC1(code, i + 2)].i.code == IRet)  /* call; ret ? */
        code[i].i.code = IJmp;  /* tail call */
      else
        code[i].i.code = ICall;
      FUNC2(compst, i, rule);  /* call jumps to respective rule */
    }
  }
  FUNC0(i == to);
}