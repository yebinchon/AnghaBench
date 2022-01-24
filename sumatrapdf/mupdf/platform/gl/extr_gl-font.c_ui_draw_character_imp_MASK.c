#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_font ;
struct TYPE_2__ {int /*<<< orphan*/  fontsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  g_font ; 
 TYPE_1__ ui ; 
 float FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,float,float) ; 

__attribute__((used)) static float FUNC2(float x, float y, int c)
{
	fz_font *font;
	int gid = FUNC0(ctx, g_font, c, 0, 0, &font);
	return FUNC1(font, ui.fontsize, gid, x, y);
}