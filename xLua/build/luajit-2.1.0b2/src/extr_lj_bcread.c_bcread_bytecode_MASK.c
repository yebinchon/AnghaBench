#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int /*<<< orphan*/  framesize; } ;
typedef  int MSize ;
typedef  int /*<<< orphan*/  LexState ;
typedef  TYPE_1__ GCproto ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BC_FUNCF ; 
 int /*<<< orphan*/  BC_FUNCV ; 
 int PROTO_VARARG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(LexState *ls, GCproto *pt, MSize sizebc)
{
  BCIns *bc = FUNC4(pt);
  bc[0] = FUNC0((pt->flags & PROTO_VARARG) ? BC_FUNCV : BC_FUNCF,
		   pt->framesize, 0);
  FUNC1(ls, bc+1, (sizebc-1)*(MSize)sizeof(BCIns));
  /* Swap bytecode instructions if the endianess differs. */
  if (FUNC2(ls)) {
    MSize i;
    for (i = 1; i < sizebc; i++) bc[i] = FUNC3(bc[i]);
  }
}