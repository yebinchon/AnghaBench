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
struct TYPE_3__ {struct TYPE_3__* tree; struct TYPE_3__* dict; struct TYPE_3__* mranges; struct TYPE_3__* xranges; struct TYPE_3__* ranges; int /*<<< orphan*/  usecmap; } ;
typedef  TYPE_1__ pdf_cmap ;
typedef  int /*<<< orphan*/  fz_storable ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(fz_context *ctx, fz_storable *cmap_)
{
	pdf_cmap *cmap = (pdf_cmap *)cmap_;
	FUNC1(ctx, cmap->usecmap);
	FUNC0(ctx, cmap->ranges);
	FUNC0(ctx, cmap->xranges);
	FUNC0(ctx, cmap->mranges);
	FUNC0(ctx, cmap->dict);
	FUNC0(ctx, cmap->tree);
	FUNC0(ctx, cmap);
}