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
typedef  int pdf_token ;
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_6__ {int /*<<< orphan*/  i; int /*<<< orphan*/  len; int /*<<< orphan*/  scratch; int /*<<< orphan*/  f; } ;
typedef  TYPE_1__ pdf_lexbuf ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_SYNTAX ; 
 int /*<<< orphan*/ * PDF_FALSE ; 
 int /*<<< orphan*/ * PDF_NULL ; 
#define  PDF_TOK_FALSE 136 
#define  PDF_TOK_INT 135 
#define  PDF_TOK_NAME 134 
#define  PDF_TOK_NULL 133 
#define  PDF_TOK_OPEN_ARRAY 132 
#define  PDF_TOK_OPEN_DICT 131 
#define  PDF_TOK_REAL 130 
#define  PDF_TOK_STRING 129 
#define  PDF_TOK_TRUE 128 
 int /*<<< orphan*/ * PDF_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

pdf_obj *
FUNC8(fz_context *ctx, pdf_document *doc, fz_stream *file, pdf_lexbuf *buf)
{
	pdf_token tok;

	tok = FUNC1(ctx, file, buf);

	switch (tok)
	{
	case PDF_TOK_OPEN_ARRAY:
		return FUNC6(ctx, doc, file, buf);
	case PDF_TOK_OPEN_DICT:
		return FUNC7(ctx, doc, file, buf);
	case PDF_TOK_NAME: return FUNC3(ctx, buf->scratch);
	case PDF_TOK_REAL: return FUNC4(ctx, buf->f);
	case PDF_TOK_STRING: return FUNC5(ctx, buf->scratch, buf->len);
	case PDF_TOK_TRUE: return PDF_TRUE;
	case PDF_TOK_FALSE: return PDF_FALSE;
	case PDF_TOK_NULL: return PDF_NULL;
	case PDF_TOK_INT: return FUNC2(ctx, buf->i);
	default: FUNC0(ctx, FZ_ERROR_SYNTAX, "unknown token in object stream");
	}
}