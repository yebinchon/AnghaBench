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
typedef  scalar_t__ u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {scalar_t__ cx; scalar_t__ cy; scalar_t__ oy; int searchthis; scalar_t__ searchcount; int /*<<< orphan*/  searchmark; int /*<<< orphan*/  searchstr; struct screen* backing; } ;
struct screen_write_ctx {int dummy; } ;
struct screen {struct grid* grid; } ;
struct grid {int hsize; int sy; int sx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grid_default_cell ; 
 int /*<<< orphan*/  FUNC3 (struct screen*) ; 
 int /*<<< orphan*/  FUNC4 (struct screen*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct screen*) ; 
 int /*<<< orphan*/  FUNC6 (struct screen_write_ctx*,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct screen_write_ctx*,int /*<<< orphan*/ *,struct screen*) ; 
 int /*<<< orphan*/  FUNC8 (struct screen_write_ctx*) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct grid*,struct grid*,scalar_t__*,scalar_t__,scalar_t__,int,int) ; 

__attribute__((used)) static int
FUNC12(struct window_mode_entry *wme, struct screen *ssp)
{
	struct window_copy_mode_data	*data = wme->data;
	struct screen			*s = data->backing, ss;
	struct screen_write_ctx		 ctx;
	struct grid			*gd = s->grid;
	int				 found, cis, which = -1;
	u_int				 px, py, b, nfound = 0, width;

	if (ssp == NULL) {
		width = FUNC9("%s", data->searchstr);
		FUNC4(&ss, width, 1, 0);
		FUNC7(&ctx, NULL, &ss);
		FUNC6(&ctx, -1, &grid_default_cell, "%s",
		    data->searchstr);
		FUNC8(&ctx);
		ssp = &ss;
	} else
		width = FUNC5(ssp);

	cis = FUNC10(data->searchstr);

	FUNC2(data->searchmark);
	data->searchmark = FUNC0((gd->hsize + gd->sy) * gd->sx);

	for (py = 0; py < gd->hsize + gd->sy; py++) {
		px = 0;
		for (;;) {
			found = FUNC11(gd, ssp->grid, &px, py,
			    px, gd->sx, cis);
			if (!found)
				break;

			nfound++;
			if (px == data->cx && py == gd->hsize + data->cy - data->oy)
				which = nfound;

			b = (py * gd->sx) + px;
			FUNC1(data->searchmark, b, b + width - 1);

			px++;
		}
	}

	if (which != -1)
		data->searchthis = 1 + nfound - which;
	else
		data->searchthis = -1;
	data->searchcount = nfound;

	if (ssp == &ss)
		FUNC3(&ss);
	return (nfound);
}