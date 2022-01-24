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
 int /*<<< orphan*/  GL_QUADS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (float,float,float) ; 

void FUNC5(float x, float y, float z, float sx, float sy, float sz, int cw)
{
   float x0,y0,z0,x1,y1,z1;
   sx /=2, sy/=2, sz/=2;
   x0 = x-sx; y0 = y-sy; z0 = z-sz;
   x1 = x+sx; y1 = y+sy; z1 = z+sz;

   FUNC0(GL_QUADS);
      if (cw) {
         FUNC2(0,0,-1);
         FUNC3(0,0); FUNC4(x0,y0,z0);
         FUNC3(1,0); FUNC4(x1,y0,z0);
         FUNC3(1,1); FUNC4(x1,y1,z0);
         FUNC3(0,1); FUNC4(x0,y1,z0);

         FUNC2(0,0,1);
         FUNC3(0,0); FUNC4(x1,y0,z1);
         FUNC3(1,0); FUNC4(x0,y0,z1);
         FUNC3(1,1); FUNC4(x0,y1,z1);
         FUNC3(0,1); FUNC4(x1,y1,z1);

         FUNC2(-1,0,0);
         FUNC3(0,0); FUNC4(x0,y1,z1);
         FUNC3(1,0); FUNC4(x0,y0,z1);
         FUNC3(1,1); FUNC4(x0,y0,z0);
         FUNC3(0,1); FUNC4(x0,y1,z0);

         FUNC2(1,0,0);
         FUNC3(0,0); FUNC4(x1,y0,z1);
         FUNC3(1,0); FUNC4(x1,y1,z1);
         FUNC3(1,1); FUNC4(x1,y1,z0);
         FUNC3(0,1); FUNC4(x1,y0,z0);

         FUNC2(0,-1,0);
         FUNC3(0,0); FUNC4(x0,y0,z1);
         FUNC3(1,0); FUNC4(x1,y0,z1);
         FUNC3(1,1); FUNC4(x1,y0,z0);
         FUNC3(0,1); FUNC4(x0,y0,z0);

         FUNC2(0,1,0);
         FUNC3(0,0); FUNC4(x1,y1,z1);
         FUNC3(1,0); FUNC4(x0,y1,z1);
         FUNC3(1,1); FUNC4(x0,y1,z0);
         FUNC3(0,1); FUNC4(x1,y1,z0);
      } else {
         FUNC2(0,0,-1);
         FUNC3(0,0); FUNC4(x0,y0,z0);
         FUNC3(0,1); FUNC4(x0,y1,z0);
         FUNC3(1,1); FUNC4(x1,y1,z0);
         FUNC3(1,0); FUNC4(x1,y0,z0);

         FUNC2(0,0,1);
         FUNC3(0,0); FUNC4(x1,y0,z1);
         FUNC3(0,1); FUNC4(x1,y1,z1);
         FUNC3(1,1); FUNC4(x0,y1,z1);
         FUNC3(1,0); FUNC4(x0,y0,z1);

         FUNC2(-1,0,0);
         FUNC3(0,0); FUNC4(x0,y1,z1);
         FUNC3(0,1); FUNC4(x0,y1,z0);
         FUNC3(1,1); FUNC4(x0,y0,z0);
         FUNC3(1,0); FUNC4(x0,y0,z1);

         FUNC2(1,0,0);
         FUNC3(0,0); FUNC4(x1,y0,z1);
         FUNC3(0,1); FUNC4(x1,y0,z0);
         FUNC3(1,1); FUNC4(x1,y1,z0);
         FUNC3(1,0); FUNC4(x1,y1,z1);

         FUNC2(0,-1,0);
         FUNC3(0,0); FUNC4(x0,y0,z1);
         FUNC3(0,1); FUNC4(x0,y0,z0);
         FUNC3(1,1); FUNC4(x1,y0,z0);
         FUNC3(1,0); FUNC4(x1,y0,z1);

         FUNC2(0,1,0);
         FUNC3(0,0); FUNC4(x1,y1,z1);
         FUNC3(0,1); FUNC4(x1,y1,z0);
         FUNC3(1,1); FUNC4(x0,y1,z0);
         FUNC3(1,0); FUNC4(x0,y1,z1);
      }
   FUNC1();
}