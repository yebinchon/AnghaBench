#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int freeset; } ;
struct TYPE_11__ {int /*<<< orphan*/  s; int /*<<< orphan*/  r; } ;
typedef  int RegSet ;
typedef  int /*<<< orphan*/  Reg ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Reg FUNC11(ASMState *as, IRIns *ir, RegSet allow)
{
  Reg dest = ir->r;
  if (FUNC5(dest)) {
    FUNC2(as, dest);
    FUNC7(as, dest);
  } else {
    if (FUNC4(dest) && FUNC10((as->freeset&allow), FUNC3(dest))) {
      dest = FUNC3(dest);
      FUNC7(as, dest);
      FUNC1((as, "dest           $r", dest));
    } else {
      dest = FUNC9(as, allow);
    }
    ir->r = dest;
  }
  if (FUNC0(FUNC6(ir->s))) FUNC8(as, ir, dest);
  return dest;
}