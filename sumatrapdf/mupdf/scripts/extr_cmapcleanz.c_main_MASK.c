#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* cmap_name; int wmode; char* usecmap_name; int codespace_len; int rlen; int xlen; int mlen; TYPE_3__* mranges; TYPE_2__* xranges; TYPE_1__* ranges; TYPE_4__* codespace; } ;
typedef  TYPE_5__ pdf_cmap ;
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_10__ {int n; int low; int high; } ;
struct TYPE_9__ {scalar_t__ low; int len; int* out; } ;
struct TYPE_8__ {scalar_t__ high; scalar_t__ low; int out; } ;
struct TYPE_7__ {scalar_t__ high; scalar_t__ low; int out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_STORE_UNLIMITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC9(int argc, char **argv)
{
	fz_context *ctx;
	fz_stream *fi;
	pdf_cmap *cmap;
	int k, m;
	int ns, nr;

	if (argc != 2)
	{
		FUNC0(stderr, "usage: cmapclean input.cmap\n");
		return 1;
	}

	ctx = FUNC3(NULL, NULL, FZ_STORE_UNLIMITED);
	if (!ctx)
	{
		FUNC0(stderr, "cannot initialise context\n");
		return 1;
	}

	fi = FUNC4(ctx, argv[1]);
	cmap = FUNC6(ctx, fi);
	FUNC2(ctx, fi);

	FUNC7("begincmap\n");
	FUNC7("/CMapName /%s def\n", cmap->cmap_name);
	FUNC7("/WMode %d def\n", cmap->wmode);
	if (cmap->usecmap_name[0])
		FUNC7("/%s usecmap\n", cmap->usecmap_name);

	if (cmap->codespace_len)
	{
		FUNC7("begincodespacerange\n");
		for (k = 0; k < cmap->codespace_len; k++)
		{
			if (cmap->codespace[k].n == 1)
				FUNC7("<%02x><%02x>\n", cmap->codespace[k].low, cmap->codespace[k].high);
			else if (cmap->codespace[k].n == 2)
				FUNC7("<%04x><%04x>\n", cmap->codespace[k].low, cmap->codespace[k].high);
			else if (cmap->codespace[k].n == 3)
				FUNC7("<%06x><%06x>\n", cmap->codespace[k].low, cmap->codespace[k].high);
			else if (cmap->codespace[k].n == 4)
				FUNC7("<%08x><%08x>\n", cmap->codespace[k].low, cmap->codespace[k].high);
			else
				FUNC7("<%x><%x>\n", cmap->codespace[k].low, cmap->codespace[k].high);
		}
		FUNC7("endcodespacerange\n");
	}

	/* 16-bit ranges */

	ns = nr = 0;
	for (k = 0; k < cmap->rlen; k++)
		if (cmap->ranges[k].high - cmap->ranges[k].low > 0)
			++nr;
		else
			++ns;

	if (ns)
	{
		FUNC7("begincidchar\n");
		for (k = 0; k < cmap->rlen; k++) {
			if (cmap->ranges[k].high - cmap->ranges[k].low == 0) {
				FUNC5(cmap->ranges[k].low);
				FUNC7(" %u\n", cmap->ranges[k].out);
			}
		}
		FUNC7("endcidchar\n");
	}

	if (nr)
	{
		FUNC7("begincidrange\n");
		for (k = 0; k < cmap->rlen; k++) {
			if (cmap->ranges[k].high - cmap->ranges[k].low > 0) {
				FUNC5(cmap->ranges[k].low);
				FUNC8(' ');
				FUNC5(cmap->ranges[k].high);
				FUNC7(" %u\n", cmap->ranges[k].out);
			}
		}
		FUNC7("endcidrange\n");
	}

	/* 32-bit ranges */

	ns = nr = 0;
	for (k = 0; k < cmap->xlen; k++)
		if (cmap->xranges[k].high - cmap->xranges[k].low > 0)
			++nr;
		else
			++ns;

	if (ns)
	{
		FUNC7("begincidchar\n");
		for (k = 0; k < cmap->xlen; k++) {
			if (cmap->xranges[k].high - cmap->xranges[k].low == 0) {
				FUNC5(cmap->xranges[k].low);
				FUNC7("%u\n", cmap->xranges[k].out);
			}
		}
		FUNC7("endcidchar\n");
	}

	if (nr)
	{
		FUNC7("begincidrange\n");
		for (k = 0; k < cmap->xlen; k++) {
			if (cmap->xranges[k].high - cmap->xranges[k].low > 0) {
				FUNC5(cmap->xranges[k].low);
				FUNC5(cmap->xranges[k].high);
				FUNC7("%u\n", cmap->xranges[k].out);
			}
		}
		FUNC7("endcidrange\n");
	}

	/* 1-to-many */

#if 0
	if (cmap->mlen > 0)
	{
		printf("beginbfchar\n");
		for (k = 0; k < cmap->mlen; k++)
		{
			pc(cmap->mranges[k].low);
			printf("<");
			for (m = 0; m < cmap->mranges[k].len; ++m)
				printf("%04x", cmap->mranges[k].out[m]);
			printf(">\n");
		}
		printf("endbfchar\n");
	}
#endif

	FUNC7("endcmap\n");

	FUNC1(ctx);
	return 0;
}