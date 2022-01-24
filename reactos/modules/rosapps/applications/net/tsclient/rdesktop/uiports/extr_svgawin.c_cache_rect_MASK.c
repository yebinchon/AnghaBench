#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int x; int y; int cx; int cy; struct TYPE_6__* prev; struct TYPE_6__* next; } ;
typedef  TYPE_1__ myrect ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* head_rect ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ sdata ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(int x, int y, int cx, int cy, int do_warp)
{
  myrect* rect;
  myrect* walk_rect;

  if (sdata == 0)
  {
    FUNC0();
    return;
  }
  if (do_warp)
    if (!FUNC2(&x, &y, &cx, &cy, NULL, NULL))
      return;
  rect = (myrect*)FUNC4(sizeof(myrect));
  rect->x = x;
  rect->y = y;
  rect->cx = cx;
  rect->cy = cy;
  rect->next = 0;
  rect->prev = 0;
  if (head_rect == 0)
    head_rect = rect;
  else
  {
    walk_rect = 0;
    do
    {
      if (walk_rect == 0)
        walk_rect = head_rect;
      else
        walk_rect = walk_rect->next;
      if (FUNC1(rect, walk_rect))
      {
        FUNC3(rect);
        return;
      }
    }
    while (walk_rect->next != 0);
    walk_rect->next = rect;
    rect->prev = walk_rect;
  }
}