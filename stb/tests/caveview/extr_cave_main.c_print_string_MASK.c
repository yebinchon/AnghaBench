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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_QUADS ; 
 int /*<<< orphan*/  GL_VERTEX_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (float,float,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC5 (float,float,char*,int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC6(float x, float y, char *text, float r, float g, float b)
{
   static char buffer[99999];
   int num_quads;
   
   num_quads = FUNC5(x, y, text, NULL, buffer, sizeof(buffer));

   FUNC0(r,g,b);
   FUNC3(GL_VERTEX_ARRAY);
   FUNC4(2, GL_FLOAT, 16, buffer);
   FUNC2(GL_QUADS, 0, num_quads*4);
   FUNC1(GL_VERTEX_ARRAY);
}