#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  GL_POLYGON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (float,float) ; 

void FUNC4(float x0, float y0, float x1, float y1)
{
   FUNC0(GL_POLYGON);
      FUNC2(0,0); FUNC3(x0,y0);
      FUNC2(1,0); FUNC3(x1,y0);
      FUNC2(1,1); FUNC3(x1,y1);
      FUNC2(0,1); FUNC3(x0,y1);
   FUNC1();
}