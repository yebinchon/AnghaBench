#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int ncode; TYPE_1__* p; } ;
struct TYPE_11__ {int code; } ;
struct TYPE_12__ {TYPE_2__ i; } ;
struct TYPE_10__ {TYPE_3__* code; } ;
typedef  TYPE_3__ Instruction ;
typedef  TYPE_4__ CompileState ;

/* Variables and functions */
 int IAny ; 
#define  IBackCommit 140 
#define  ICall 139 
#define  IChoice 138 
#define  ICommit 137 
#define  IEnd 136 
#define  IFail 135 
#define  IFailTwice 134 
#define  IJmp 133 
#define  IPartialCommit 132 
#define  IRet 131 
#define  ITestAny 130 
#define  ITestChar 129 
#define  ITestSet 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5 (CompileState *compst) {
  Instruction *code = compst->p->code;
  int i;
  for (i = 0; i < compst->ncode; i += FUNC4(&code[i])) {
   redo:
    switch (code[i].i.code) {
      case IChoice: case ICall: case ICommit: case IPartialCommit:
      case IBackCommit: case ITestChar: case ITestSet:
      case ITestAny: {  /* instructions with labels */
        FUNC3(compst, i, FUNC1(code, i));  /* optimize label */
        break;
      }
      case IJmp: {
        int ft = FUNC2(code, i);
        switch (code[ft].i.code) {  /* jumping to what? */
          case IRet: case IFail: case IFailTwice:
          case IEnd: {  /* instructions with unconditional implicit jumps */
            code[i] = code[ft];  /* jump becomes that instruction */
            code[i + 1].i.code = IAny;  /* 'no-op' for target position */
            break;
          }
          case ICommit: case IPartialCommit:
          case IBackCommit: {  /* inst. with unconditional explicit jumps */
            int fft = FUNC1(code, ft);
            code[i] = code[ft];  /* jump becomes that instruction... */
            FUNC3(compst, i, fft);  /* but must correct its offset */
            goto redo;  /* reoptimize its label */
          }
          default: {
            FUNC3(compst, i, ft);  /* optimize label */
            break;
          }
        }
        break;
      }
      default: break;
    }
  }
  FUNC0(code[i - 1].i.code == IEnd);
}