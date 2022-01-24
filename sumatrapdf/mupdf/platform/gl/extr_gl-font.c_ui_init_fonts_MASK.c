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
 int /*<<< orphan*/  GL_ALPHA ; 
 int /*<<< orphan*/  GL_CLAMP ; 
 int /*<<< orphan*/  GL_NEAREST ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_S ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_T ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ctx ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_cache_h ; 
 int /*<<< orphan*/  g_cache_tex ; 
 int /*<<< orphan*/  g_cache_w ; 
 int /*<<< orphan*/  g_font ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
	const unsigned char *data;
	int size;

	FUNC4(1, &g_cache_tex);
	FUNC3(GL_TEXTURE_2D, g_cache_tex);
	FUNC6(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	FUNC6(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
	FUNC6(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
	FUNC6(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP);
	FUNC5(GL_TEXTURE_2D, 0, GL_ALPHA, g_cache_w, g_cache_h, 0, GL_ALPHA, GL_UNSIGNED_BYTE, NULL);

	FUNC0();

	data = FUNC1(ctx, "Charis SIL", 0, 0, &size);
	if (!data)
		data = FUNC1(ctx, "Times", 0, 0, &size);
	g_font = FUNC2(ctx, NULL, data, size, 0, 0);
}