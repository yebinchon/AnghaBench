#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pdf_token ;
struct TYPE_10__ {int len; int /*<<< orphan*/ * scratch; } ;
typedef  TYPE_1__ pdf_lexbuf ;
struct TYPE_11__ {int /*<<< orphan*/  cmap_name; } ;
typedef  TYPE_2__ pdf_cmap ;
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 scalar_t__ PDF_TOK_KEYWORD ; 
 scalar_t__ PDF_TOK_OPEN_ARRAY ; 
 scalar_t__ PDF_TOK_STRING ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC10(fz_context *ctx, pdf_cmap *cmap, fz_stream *file, pdf_lexbuf *buf)
{
	pdf_token tok;
	int lo, hi, dst;

	while (1)
	{
		tok = FUNC5(ctx, file, buf);

		if (tok == PDF_TOK_KEYWORD && !FUNC9(buf->scratch, "endbfrange"))
			return;

		else if (tok != PDF_TOK_STRING)
			FUNC1(ctx, FZ_ERROR_GENERIC, "expected string or endbfrange");

		lo = FUNC4(buf->scratch, buf->len);

		tok = FUNC5(ctx, file, buf);
		if (tok != PDF_TOK_STRING)
			FUNC1(ctx, FZ_ERROR_GENERIC, "expected string");

		hi = FUNC4(buf->scratch, buf->len);
		if (lo < 0 || lo > 65535 || hi < 0 || hi > 65535 || lo > hi)
		{
			FUNC2(ctx, "bf_range limits out of range in cmap %s", cmap->cmap_name);
			return;
		}

		tok = FUNC5(ctx, file, buf);

		if (tok == PDF_TOK_STRING)
		{
			if (buf->len == 2)
			{
				dst = FUNC4(buf->scratch, buf->len);
				FUNC7(ctx, cmap, lo, hi, dst);
			}
			else
			{
				int dststr[256];
				int i;

				if (buf->len / 2)
				{
					int len = FUNC0(buf->len / 2, FUNC3(dststr));
					for (i = 0; i < len; i++)
						dststr[i] = FUNC4(&buf->scratch[i * 2], 2);

					while (lo <= hi)
					{
						FUNC6(ctx, cmap, lo, dststr, i);
						dststr[i-1] ++;
						lo ++;
					}
				}
			}
		}

		else if (tok == PDF_TOK_OPEN_ARRAY)
		{
			FUNC8(ctx, cmap, file, buf, lo, hi);
		}

		else
		{
			FUNC1(ctx, FZ_ERROR_GENERIC, "expected string or array or endbfrange");
		}
	}
}