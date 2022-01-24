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
typedef  int /*<<< orphan*/  pdf_token ;
struct TYPE_5__ {int /*<<< orphan*/  scratch; } ;
typedef  TYPE_1__ pdf_lexbuf ;
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
#define  EOF 130 
#define  IS_NUMBER 129 
#define  IS_WHITE 128 
 int /*<<< orphan*/  PDF_TOK_CLOSE_ARRAY ; 
 int /*<<< orphan*/  PDF_TOK_CLOSE_BRACE ; 
 int /*<<< orphan*/  PDF_TOK_CLOSE_DICT ; 
 int /*<<< orphan*/  PDF_TOK_EOF ; 
 int /*<<< orphan*/  PDF_TOK_ERROR ; 
 int /*<<< orphan*/  PDF_TOK_NAME ; 
 int /*<<< orphan*/  PDF_TOK_OPEN_ARRAY ; 
 int /*<<< orphan*/  PDF_TOK_OPEN_BRACE ; 
 int /*<<< orphan*/  PDF_TOK_OPEN_DICT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

pdf_token
FUNC7(fz_context *ctx, fz_stream *f, pdf_lexbuf *buf)
{
	while (1)
	{
		int c = FUNC1(ctx, f);
		switch (c)
		{
		case EOF:
			return PDF_TOK_EOF;
		case IS_WHITE:
			FUNC5(ctx, f);
			break;
		case '%':
			FUNC2(ctx, f);
			break;
		case '/':
			FUNC3(ctx, f, buf);
			return PDF_TOK_NAME;
		case '(':
			return PDF_TOK_ERROR; /* no strings allowed */
		case ')':
			return PDF_TOK_ERROR; /* no strings allowed */
		case '<':
			c = FUNC1(ctx, f);
			if (c == '<')
				return PDF_TOK_OPEN_DICT;
			if (c != EOF)
				FUNC0(ctx, f);
			return PDF_TOK_ERROR; /* no strings allowed */
		case '>':
			c = FUNC1(ctx, f);
			if (c == '>')
				return PDF_TOK_CLOSE_DICT;
			if (c != EOF)
				FUNC0(ctx, f);
			return PDF_TOK_ERROR;
		case '[':
			return PDF_TOK_OPEN_ARRAY;
		case ']':
			return PDF_TOK_CLOSE_ARRAY;
		case '{':
			return PDF_TOK_OPEN_BRACE;
		case '}':
			return PDF_TOK_CLOSE_BRACE;
		case IS_NUMBER:
			return FUNC4(ctx, f, buf, c);
		default: /* isregular: !isdelim && !iswhite && c != EOF */
			FUNC0(ctx, f);
			FUNC3(ctx, f, buf);
			return FUNC6(buf->scratch);
		}
	}
}