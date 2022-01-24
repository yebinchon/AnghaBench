#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;
struct TYPE_3__ {int /*<<< orphan*/  code; } ;
struct TYPE_4__ {int /*<<< orphan*/  buff; TYPE_1__ i; } ;
typedef  int Opcode ;
typedef  int /*<<< orphan*/  CompileState ;

/* Variables and functions */
 int IAny ; 
#define  IChar 129 
#define  ISet 128 
 int /*<<< orphan*/  ITestSet ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6 (CompileState *compst, const byte *cs, int tt) {
  int c = 0;  /* (=) to avoid warnings */
  Opcode op = FUNC2(cs, &c);
  switch (op) {
    case IChar: FUNC3(compst, c, tt); break;
    case ISet: {  /* non-trivial set? */
      if (tt >= 0 && FUNC5(compst, tt).i.code == ITestSet &&
          FUNC4(cs, FUNC5(compst, tt + 2).buff))
        FUNC1(compst, IAny, 0);
      else {
        FUNC1(compst, ISet, 0);
        FUNC0(compst, cs);
      }
      break;
    }
    default: FUNC1(compst, op, c); break;
  }
}