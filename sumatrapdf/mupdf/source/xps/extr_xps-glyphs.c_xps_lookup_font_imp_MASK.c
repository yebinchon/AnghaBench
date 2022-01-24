#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  font; int /*<<< orphan*/  name; struct TYPE_4__* next; } ;
typedef  TYPE_1__ xps_font_cache ;
struct TYPE_5__ {TYPE_1__* font_table; } ;
typedef  TYPE_2__ xps_document ;
typedef  int /*<<< orphan*/  fz_font ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static fz_font *
FUNC2(fz_context *ctx, xps_document *doc, char *name)
{
	xps_font_cache *cache;
	for (cache = doc->font_table; cache; cache = cache->next)
		if (!FUNC1(cache->name, name))
			return FUNC0(ctx, cache->font);
	return NULL;
}