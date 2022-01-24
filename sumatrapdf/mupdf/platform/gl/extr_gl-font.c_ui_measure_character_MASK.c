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
struct TYPE_2__ {float fontsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 float FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  g_font ; 
 TYPE_1__ ui ; 

float FUNC2(int c)
{
	fz_font *font;
	int gid = FUNC1(ctx, g_font, c, 0, 0, &font);
	return FUNC0(ctx, font, gid, 0) * ui.fontsize;
}