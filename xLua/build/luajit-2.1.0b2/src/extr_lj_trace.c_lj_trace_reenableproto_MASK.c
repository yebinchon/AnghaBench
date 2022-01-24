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
struct TYPE_4__ {int flags; size_t sizebc; } ;
typedef  TYPE_1__ GCproto ;
typedef  size_t BCPos ;
typedef  scalar_t__ BCOp ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 int BC_FUNCF ; 
 scalar_t__ BC_IFORL ; 
 scalar_t__ BC_IFUNCF ; 
 scalar_t__ BC_IITERL ; 
 scalar_t__ BC_ILOOP ; 
 scalar_t__ BC_LOOP ; 
 int PROTO_ILOOP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3(GCproto *pt)
{
  if ((pt->flags & PROTO_ILOOP)) {
    BCIns *bc = FUNC1(pt);
    BCPos i, sizebc = pt->sizebc;;
    pt->flags &= ~PROTO_ILOOP;
    if (FUNC0(bc[0]) == BC_IFUNCF)
      FUNC2(&bc[0], BC_FUNCF);
    for (i = 1; i < sizebc; i++) {
      BCOp op = FUNC0(bc[i]);
      if (op == BC_IFORL || op == BC_IITERL || op == BC_ILOOP)
	FUNC2(&bc[i], (int)op+(int)BC_LOOP-(int)BC_ILOOP);
    }
  }
}