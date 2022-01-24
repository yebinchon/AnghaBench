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
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_LIGHTING ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 scalar_t__ black_on_white ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sx ; 
 int /*<<< orphan*/  sy ; 

void FUNC7(void)
{
   FUNC2(GL_CULL_FACE);
   FUNC2(GL_TEXTURE_2D);
   FUNC2(GL_LIGHTING);
   FUNC2(GL_DEPTH_TEST);

   FUNC5(0,0,sx,sy);
   if (black_on_white)
      FUNC1(255,255,255,0);
   else
      FUNC1(0,0,0,0);
   FUNC0(GL_COLOR_BUFFER_BIT);

   FUNC4(GL_PROJECTION);
   FUNC3();
   FUNC6(0,sx,sy,0);
   FUNC4(GL_MODELVIEW);
   FUNC3();
}