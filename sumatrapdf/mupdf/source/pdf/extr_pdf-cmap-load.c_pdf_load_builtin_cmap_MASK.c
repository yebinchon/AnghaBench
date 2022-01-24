#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  cmap_name; } ;
typedef  TYPE_1__ pdf_cmap ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int FUNC0 (TYPE_1__**) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__** table ; 

pdf_cmap *
FUNC2(fz_context *ctx, const char *name)
{
	int r = FUNC0(table)-1;
	int l = 0;
	while (l <= r)
	{
		int m = (l + r) >> 1;
		int c = FUNC1(name, table[m]->cmap_name);
		if (c < 0)
			r = m - 1;
		else if (c > 0)
			l = m + 1;
		else
			return table[m];
	}
	return NULL;
}