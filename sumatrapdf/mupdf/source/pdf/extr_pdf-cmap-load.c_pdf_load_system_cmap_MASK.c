#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* usecmap_name; int /*<<< orphan*/  usecmap; } ;
typedef  TYPE_1__ pdf_cmap ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 

pdf_cmap *
FUNC3(fz_context *ctx, const char *cmap_name)
{
	pdf_cmap *usecmap;
	pdf_cmap *cmap;

	cmap = FUNC1(ctx, cmap_name);
	if (!cmap)
		FUNC0(ctx, FZ_ERROR_GENERIC, "no builtin cmap file: %s", cmap_name);

	if (cmap->usecmap_name[0] && !cmap->usecmap)
	{
		usecmap = FUNC3(ctx, cmap->usecmap_name);
		if (!usecmap)
			FUNC0(ctx, FZ_ERROR_GENERIC, "no builtin cmap file: %s", cmap->usecmap_name);
		FUNC2(ctx, cmap, usecmap);
	}

	return cmap;
}