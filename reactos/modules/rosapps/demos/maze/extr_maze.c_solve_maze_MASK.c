#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dir; size_t x; size_t y; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int START_SQUARE ; 
 int WALL_TOP ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hBrushDead ; 
 int /*<<< orphan*/  hBrushLiving ; 
 int /*<<< orphan*/  hDC ; 
 int /*<<< orphan*/  hWnd ; 
 int** maze ; 
 TYPE_1__* path ; 
 size_t pathi ; 

__attribute__((used)) static int
FUNC4()                             /* solve it with graphical feedback */
{
  int ret;
  int action_done;

  do {
    action_done = 1;
    if ( ++path[pathi].dir >= 4 ) {
      pathi--;
      FUNC2( (int)(path[pathi].x), (int)(path[pathi].y),
	  	       (int)(path[pathi].dir), hDC, hBrushDead);
      ret = 0;
    }
    else if ( ! (maze[path[pathi].x][path[pathi].y] &
	  	(WALL_TOP >> path[pathi].dir))  &&
	     ( (pathi == 0) || ( (path[pathi].dir !=
		  	    (int)(path[pathi-1].dir+2)%4) ) ) ) {
      FUNC3(pathi, hDC, hBrushLiving);
      pathi++;
      if ( maze[path[pathi].x][path[pathi].y] & START_SQUARE ) {
	    FUNC0(hBrushLiving);
	    FUNC0(hBrushDead);
	    FUNC1(hWnd, hDC);
          ret = 1;
      } else {
        ret = 0;
      }
    } else {
      action_done = 0;
    }
  } while (! action_done);

  return ret;
}