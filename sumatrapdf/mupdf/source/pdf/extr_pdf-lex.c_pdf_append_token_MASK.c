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
struct TYPE_4__ {size_t len; size_t size; int /*<<< orphan*/ * scratch; int /*<<< orphan*/ * f; int /*<<< orphan*/ * i; } ;
typedef  TYPE_1__ pdf_lexbuf ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
#define  PDF_TOK_CLOSE_ARRAY 137 
#define  PDF_TOK_CLOSE_BRACE 136 
#define  PDF_TOK_CLOSE_DICT 135 
#define  PDF_TOK_INT 134 
#define  PDF_TOK_NAME 133 
#define  PDF_TOK_OPEN_ARRAY 132 
#define  PDF_TOK_OPEN_BRACE 131 
#define  PDF_TOK_OPEN_DICT 130 
#define  PDF_TOK_REAL 129 
#define  PDF_TOK_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC6(fz_context *ctx, fz_buffer *fzbuf, int tok, pdf_lexbuf *buf)
{
	switch (tok)
	{
	case PDF_TOK_NAME:
		FUNC3(ctx, fzbuf, "/%s", buf->scratch);
		break;
	case PDF_TOK_STRING:
		if (buf->len >= buf->size)
			FUNC5(ctx, buf);
		buf->scratch[buf->len] = 0;
		FUNC2(ctx, fzbuf, buf->scratch);
		break;
	case PDF_TOK_OPEN_DICT:
		FUNC4(ctx, fzbuf, "<<");
		break;
	case PDF_TOK_CLOSE_DICT:
		FUNC4(ctx, fzbuf, ">>");
		break;
	case PDF_TOK_OPEN_ARRAY:
		FUNC0(ctx, fzbuf, '[');
		break;
	case PDF_TOK_CLOSE_ARRAY:
		FUNC0(ctx, fzbuf, ']');
		break;
	case PDF_TOK_OPEN_BRACE:
		FUNC0(ctx, fzbuf, '{');
		break;
	case PDF_TOK_CLOSE_BRACE:
		FUNC0(ctx, fzbuf, '}');
		break;
	case PDF_TOK_INT:
		FUNC3(ctx, fzbuf, "%ld", buf->i);
		break;
	case PDF_TOK_REAL:
		FUNC3(ctx, fzbuf, "%g", buf->f);
		break;
	default:
		FUNC1(ctx, fzbuf, buf->scratch, buf->len);
		break;
	}
}