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
typedef  size_t uint32_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_4__ {int /*<<< orphan*/ * hotcount; } ;
struct TYPE_3__ {int* param; } ;
typedef  int /*<<< orphan*/  HotCount ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int HOTCOUNT_LOOP ; 
 size_t HOTCOUNT_SIZE ; 
 size_t JIT_P_hotloop ; 

void FUNC2(global_State *g)
{
  int32_t hotloop = FUNC1(g)->param[JIT_P_hotloop];
  HotCount start = (HotCount)(hotloop*HOTCOUNT_LOOP - 1);
  HotCount *hotcount = FUNC0(g)->hotcount;
  uint32_t i;
  for (i = 0; i < HOTCOUNT_SIZE; i++)
    hotcount[i] = start;
}