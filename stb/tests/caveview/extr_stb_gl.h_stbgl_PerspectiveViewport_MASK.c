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
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (float,float,float,float,float) ; 

void FUNC5(int x, int y, int w, int h, float zoom, float min_hfov, float min_vfov, float znear, float zfar)
{
   if (znear <= 0.0001f) znear = 0.0001f;
   FUNC3(x,y,w,h);
   FUNC2(x,y,w,h);
   FUNC1(GL_PROJECTION);
   FUNC0();
   FUNC4(zoom, min_hfov, min_vfov, znear, zfar);
   FUNC1(GL_MODELVIEW);
}