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
 int /*<<< orphan*/  GL_VIEWPORT ; 
 scalar_t__ FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC3 (float) ; 
 scalar_t__ FUNC4 (float) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(float zoom, float max_hfov, float max_vfov, float znear, float zfar)
{
   float unit_width, unit_height, aspect, vfov;
   int data[4],w,h;
   FUNC1(GL_VIEWPORT, data);
   w = data[2];
   h = data[3];
   aspect = (float) w / h;

   if (max_hfov <= 0) max_hfov = 179;
   if (max_vfov <= 0) max_vfov = 179;

   // convert max_hfov, max_vfov to worldspace width at depth=1
   unit_width  = (float) FUNC5(FUNC3(max_hfov/2)) * 2;
   unit_height = (float) FUNC5(FUNC3(max_vfov/2)) * 2;
   // check if hfov = max_hfov is enough to satisfy it
   if (unit_width <= aspect * unit_height) {
      float height = unit_width / aspect;
      vfov = (float) FUNC0((     height/2) / zoom);
   } else {
      vfov = (float) FUNC0((unit_height/2) / zoom);
   }
   vfov = (float) FUNC4(vfov * 2);
   FUNC2(vfov, aspect, znear, zfar);
}