#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char* cmap_name; int rlen; int xlen; int mlen; int dlen; int* dict; char* usecmap_name; int wmode; int codespace_len; TYPE_4__* codespace; TYPE_3__* mranges; TYPE_2__* xranges; TYPE_1__* ranges; } ;
typedef  TYPE_5__ pdf_cmap ;
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_11__ {int n; int low; int /*<<< orphan*/  high; } ;
struct TYPE_10__ {int low; int out; } ;
struct TYPE_9__ {int low; int high; int out; } ;
struct TYPE_8__ {int low; int high; int out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_STORE_UNLIMITED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

int
FUNC10(int argc, char **argv)
{
	pdf_cmap *cmap;
	fz_stream *fi;
	char name[256];
	int i, k;
	fz_context *ctx;

	if (argc < 2)
	{
		FUNC1(stderr, "usage: cmapdump > out.c [lots of cmap files]\n");
		return 1;
	}

	ctx = FUNC4(NULL, NULL, FZ_STORE_UNLIMITED);
	if (!ctx)
	{
		FUNC1(stderr, "cannot initialise context\n");
		return 1;
	}

	FUNC8("/* This is an automatically generated file. Do not edit. */\n");

	for (i = 1; i < argc; i++)
	{
		fi = FUNC5(ctx, argv[i]);
		cmap = FUNC7(ctx, fi);
		FUNC3(ctx, fi);

		FUNC9(name, cmap->cmap_name);
		FUNC0(name);

		FUNC8("\n/* %s */\n\n", cmap->cmap_name);

		if (cmap->rlen)
		{
			FUNC8("static const pdf_range cmap_%s_ranges[] = {", name);
			for (k = 0; k < cmap->rlen; k++)
			{
				FUNC8("\n{%u,%u,%u},", cmap->ranges[k].low, cmap->ranges[k].high, cmap->ranges[k].out);
			}
			FUNC8("\n};\n\n");
		}

		if (cmap->xlen)
		{
			FUNC8("static const pdf_xrange cmap_%s_xranges[] = {", name);
			for (k = 0; k < cmap->xlen; k++)
			{
				FUNC8("\n{%u,%u,%u},", cmap->xranges[k].low, cmap->xranges[k].high, cmap->xranges[k].out);
			}
			FUNC8("\n};\n\n");
		}

		if (cmap->mlen > 0)
		{
			FUNC8("static const pdf_mrange cmap_%s_mranges[] = {", name);
			for (k = 0; k < cmap->mlen; k++)
			{
				FUNC8("\n{%u,%u},", cmap->mranges[k].low, cmap->mranges[k].out);
			}
			FUNC8("\n};\n\n");
		}

		if (cmap->dlen > 0)
		{
			int ti = 0, tn = cmap->dict[0];
			FUNC8("static const int cmap_%s_table[] = {\n", name);
			for (k = 0; k < cmap->dlen; k++)
			{
				if (ti > tn)
				{
					FUNC8("\n");
					ti = 1;
					tn = cmap->dict[k];
				}
				else
					++ti;
				FUNC8("%u,", cmap->dict[k]);
			}
			FUNC8("\n};\n\n");
		}

		FUNC8("static pdf_cmap cmap_%s = {\n", name);
		FUNC8("\t{ -1, pdf_drop_cmap_imp },\n");
		FUNC8("\t/* cmapname */ \"%s\",\n", cmap->cmap_name);
		FUNC8("\t/* usecmap */ \"%s\", NULL,\n", cmap->usecmap_name);
		FUNC8("\t/* wmode */ %u,\n", cmap->wmode);
		FUNC8("\t/* codespaces */ %u, {\n", cmap->codespace_len);
		if (cmap->codespace_len == 0)
		{
			FUNC8("\t\t{ 0, 0, 0 },\n");
		}
		for (k = 0; k < cmap->codespace_len; k++)
		{
			int n = cmap->codespace[k].n;
			FUNC8("\t\t{ %u, 0x%0*x, 0x%0*x },\n", n,
				n*2, cmap->codespace[k].low,
				n*2, cmap->codespace[k].high);
		}
		FUNC8("\t},\n");

		if (cmap->rlen)
			FUNC8("\t%u, %u, (pdf_range*)cmap_%s_ranges,\n", cmap->rlen, cmap->rlen, name);
		else
			FUNC8("\t0, 0, NULL, /* ranges */\n");
		if (cmap->xlen)
			FUNC8("\t%u, %u, (pdf_xrange*)cmap_%s_xranges,\n", cmap->xlen, cmap->xlen, name);
		else
			FUNC8("\t0, 0, NULL, /* xranges */\n");
		if (cmap->mlen)
			FUNC8("\t%u, %u, (pdf_mrange*)cmap_%s_mranges,\n", cmap->mlen, cmap->mlen, name);
		else
			FUNC8("\t0, 0, NULL, /* mranges */\n");
		if (cmap->dict)
			FUNC8("\t%u, %u, (int*)cmap_%s_table,\n", cmap->dlen, cmap->dlen, name);
		else
			FUNC8("\t0, 0, NULL, /* table */\n");
		FUNC8("\t0, 0, 0, NULL /* splay tree */\n");
		FUNC8("};\n");

		FUNC6(ctx, cmap);
	}

	FUNC2(ctx);
	return 0;
}