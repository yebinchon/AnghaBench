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
typedef  scalar_t__ GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_AMBIENT ; 
 int /*<<< orphan*/  GL_AMBIENT_AND_DIFFUSE ; 
 scalar_t__ GL_COLOR_MATERIAL ; 
 int /*<<< orphan*/  GL_DIFFUSE ; 
 int /*<<< orphan*/  GL_FRONT ; 
 scalar_t__ GL_LIGHT0 ; 
 int /*<<< orphan*/  GL_POSITION ; 
 int /*<<< orphan*/  GL_SPECULAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,float*) ; 
 float FUNC3 (float) ; 

void FUNC4(int index, float bright, float x, float y, float z)
{
   float d = (float) (1.0f/FUNC3(x*x+y*y+z*z));
   float dir[4] = { x*d,y*d,z*d,0 }, zero[4] = { 0,0,0,0 };
   float c[4] = { bright,bright,bright,0 };
   GLuint light = GL_LIGHT0 + index;
   FUNC2(light, GL_POSITION, dir);
   FUNC2(light, GL_DIFFUSE, c);
   FUNC2(light, GL_AMBIENT, zero);
   FUNC2(light, GL_SPECULAR, zero);
   FUNC1(light);
   FUNC0(GL_FRONT, GL_AMBIENT_AND_DIFFUSE);
   FUNC1(GL_COLOR_MATERIAL);
}