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
typedef  int /*<<< orphan*/  fz_matrix ;
struct TYPE_3__ {int /*<<< orphan*/  t3matrix; int /*<<< orphan*/ ** t3lists; } ;
typedef  TYPE_1__ fz_font ;
typedef  int /*<<< orphan*/  fz_display_list ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fz_infinite_rect ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(fz_context *ctx, fz_font *font, int gid, fz_matrix trm, fz_device *dev)
{
	fz_display_list *list;
	fz_matrix ctm;

	list = font->t3lists[gid];
	if (!list)
		return;

	ctm = FUNC0(font->t3matrix, trm);
	FUNC1(ctx, list, dev, ctm, fz_infinite_rect, NULL);
}