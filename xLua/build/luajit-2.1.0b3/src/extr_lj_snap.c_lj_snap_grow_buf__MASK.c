#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  snap; } ;
struct TYPE_6__ {int /*<<< orphan*/  snapbuf; TYPE_1__ cur; int /*<<< orphan*/  sizesnap; int /*<<< orphan*/  L; int /*<<< orphan*/ * param; } ;
typedef  TYPE_2__ jit_State ;
typedef  scalar_t__ MSize ;

/* Variables and functions */
 size_t JIT_P_maxsnap ; 
 int /*<<< orphan*/  LJ_TRERR_SNAPOV ; 
 int /*<<< orphan*/  SnapShot ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC2(jit_State *J, MSize need)
{
  MSize maxsnap = (MSize)J->param[JIT_P_maxsnap];
  if (need > maxsnap)
    FUNC1(J, LJ_TRERR_SNAPOV);
  FUNC0(J->L, J->snapbuf, J->sizesnap, maxsnap, SnapShot);
  J->cur.snap = J->snapbuf;
}