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
struct texture {scalar_t__ y; scalar_t__ w; scalar_t__ x; int /*<<< orphan*/  s; scalar_t__ h; int /*<<< orphan*/  t; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_ONE ; 
 int /*<<< orphan*/  GL_ONE_MINUS_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TRIANGLE_STRIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 

void FUNC9(struct texture *tex, float x, float y)
{
	FUNC2(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
	FUNC5(GL_BLEND);
	FUNC1(GL_TEXTURE_2D, tex->id);
	FUNC5(GL_TEXTURE_2D);
	FUNC0(GL_TRIANGLE_STRIP);
	{
		FUNC3(1, 1, 1, 1);
		FUNC7(0, tex->t);
		FUNC8(x + tex->x, y + tex->y + tex->h);
		FUNC7(0, 0);
		FUNC8(x + tex->x, y + tex->y);
		FUNC7(tex->s, tex->t);
		FUNC8(x + tex->x + tex->w, y + tex->y + tex->h);
		FUNC7(tex->s, 0);
		FUNC8(x + tex->x + tex->w, y + tex->y);
	}
	FUNC6();
	FUNC4(GL_TEXTURE_2D);
	FUNC4(GL_BLEND);
}