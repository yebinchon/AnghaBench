#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  t1; int /*<<< orphan*/  s1; int /*<<< orphan*/  t0; int /*<<< orphan*/  s0; int /*<<< orphan*/  y1; int /*<<< orphan*/  x1; int /*<<< orphan*/  y0; int /*<<< orphan*/  x0; } ;
typedef  TYPE_1__ stbtt_aligned_quad ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_H ; 
 int /*<<< orphan*/  BITMAP_W ; 
 int /*<<< orphan*/  GL_QUADS ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/ * chardata ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  font_tex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  integer_align ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,float*,TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC6(float x, float y, int font, char *text)
{
   FUNC3(GL_TEXTURE_2D);
   FUNC2(GL_TEXTURE_2D, font_tex);
   FUNC1(GL_QUADS);
   while (*text) {
      stbtt_aligned_quad q;
      FUNC5(chardata[font], BITMAP_W, BITMAP_H, *text++, &x, &y, &q, font ? 0 : integer_align);
      FUNC0(q.x0,q.y0,q.x1,q.y1, q.s0,q.t0,q.s1,q.t1);
   }
   FUNC4();
}