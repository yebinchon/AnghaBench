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
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_TEXTURE_2D_ARRAY_EXT ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (float,int /*<<< orphan*/ ,int) ; 
 int** tex2_data ; 
 int /*<<< orphan*/ * voxel_tex ; 

void FUNC3(float fa)
{
   int i;
   int a = (int) FUNC2(fa, 0, 255);
   if (a < 0) a = 0; else if (a > 255) a = 255;
   FUNC0(GL_TEXTURE_2D_ARRAY_EXT, voxel_tex[1]);
   for (i=0; i < 64; ++i) {
      tex2_data[i][3] = a;
      FUNC1(GL_TEXTURE_2D_ARRAY_EXT, 0, 0,0,i, 1,1,1, GL_RGBA, GL_UNSIGNED_BYTE, tex2_data[i]);
   }
}