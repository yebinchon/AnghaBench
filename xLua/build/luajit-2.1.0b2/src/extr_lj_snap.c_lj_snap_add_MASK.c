#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_8__ {int nsnap; int nsnapmap; scalar_t__ nins; TYPE_4__* snap; } ;
struct TYPE_11__ {scalar_t__ irt; } ;
struct TYPE_9__ {TYPE_1__ cur; TYPE_7__ guardemit; scalar_t__ mergesnap; } ;
typedef  TYPE_2__ jit_State ;
struct TYPE_10__ {scalar_t__ ref; int mapofs; } ;
typedef  int MSize ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_NIL ; 
 int /*<<< orphan*/  IR_NOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_4__*,int) ; 

void FUNC5(jit_State *J)
{
  MSize nsnap = J->cur.nsnap;
  MSize nsnapmap = J->cur.nsnapmap;
  /* Merge if no ins. inbetween or if requested and no guard inbetween. */
  if ((nsnap > 0 && J->cur.snap[nsnap-1].ref == J->cur.nins) ||
      (J->mergesnap && !FUNC2(J->guardemit))) {
    if (nsnap == 1) {  /* But preserve snap #0 PC. */
      FUNC1(FUNC0(IR_NOP, IRT_NIL), 0, 0);
      goto nomerge;
    }
    nsnapmap = J->cur.snap[--nsnap].mapofs;
  } else {
  nomerge:
    FUNC3(J, nsnap+1);
    J->cur.nsnap = (uint16_t)(nsnap+1);
  }
  J->mergesnap = 0;
  J->guardemit.irt = 0;
  FUNC4(J, &J->cur.snap[nsnap], nsnapmap);
}