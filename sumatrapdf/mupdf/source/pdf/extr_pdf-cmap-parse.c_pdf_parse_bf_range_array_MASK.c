#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pdf_token ;
struct TYPE_4__ {int len; int /*<<< orphan*/ * scratch; } ;
typedef  TYPE_1__ pdf_lexbuf ;
typedef  int /*<<< orphan*/  pdf_cmap ;
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 scalar_t__ PDF_TOK_CLOSE_ARRAY ; 
 scalar_t__ PDF_TOK_STRING ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*,int) ; 

__attribute__((used)) static void
FUNC6(fz_context *ctx, pdf_cmap *cmap, fz_stream *file, pdf_lexbuf *buf, int lo, int hi)
{
	pdf_token tok;
	int dst[256];
	int i;

	while (1)
	{
		tok = FUNC4(ctx, file, buf);

		if (tok == PDF_TOK_CLOSE_ARRAY)
			return;

		/* Note: does not handle [ /Name /Name ... ] */
		else if (tok != PDF_TOK_STRING)
			FUNC1(ctx, FZ_ERROR_GENERIC, "expected string or ]");

		if (buf->len / 2)
		{
			int len = FUNC0(buf->len / 2, FUNC2(dst));
			for (i = 0; i < len; i++)
				dst[i] = FUNC3(&buf->scratch[i * 2], 2);

			FUNC5(ctx, cmap, lo, dst, buf->len / 2);
		}

		lo ++;
	}
}