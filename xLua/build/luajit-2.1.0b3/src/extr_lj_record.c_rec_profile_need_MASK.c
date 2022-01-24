#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {float prof_mode; int prev_line; int /*<<< orphan*/ * prev_pt; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  GCproto ;
typedef  scalar_t__ BCLine ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(jit_State *J, GCproto *pt, const BCIns *pc)
{
  GCproto *ppt;
  FUNC1(J->prof_mode == 'f' || J->prof_mode == 'l');
  if (!pt)
    return 0;
  ppt = J->prev_pt;
  J->prev_pt = pt;
  if (pt != ppt && ppt) {
    J->prev_line = -1;
    return 1;
  }
  if (J->prof_mode == 'l') {
    BCLine line = FUNC0(pt, FUNC2(pt, pc));
    BCLine pline = J->prev_line;
    J->prev_line = line;
    if (pline != line)
      return 1;
  }
  return 0;
}