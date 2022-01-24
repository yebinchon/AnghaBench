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
struct lexbuf {char lookahead; int /*<<< orphan*/  string; int /*<<< orphan*/  pool; int /*<<< orphan*/  ctx; } ;
struct TYPE_5__ {char* data; char type; int /*<<< orphan*/  args; } ;
typedef  TYPE_1__ fz_css_value ;

/* Variables and functions */
#define  CSS_HASH 133 
 int CSS_KEYWORD ; 
#define  CSS_LENGTH 132 
#define  CSS_NUMBER 131 
#define  CSS_PERCENT 130 
#define  CSS_STRING 129 
#define  CSS_URI 128 
 scalar_t__ FUNC0 (struct lexbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct lexbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct lexbuf*,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct lexbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct lexbuf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct lexbuf*) ; 

__attribute__((used)) static fz_css_value *FUNC11(struct lexbuf *buf)
{
	fz_css_value *v;

	if (buf->lookahead == '+' || buf->lookahead == '-')
	{
		float sign = buf->lookahead == '-' ? -1 : 1;
		FUNC6(buf);
		if (buf->lookahead != CSS_NUMBER && buf->lookahead != CSS_LENGTH && buf->lookahead != CSS_PERCENT)
			FUNC2(buf, "expected number");
		if (sign < 0)
		{
			v = FUNC4(buf->ctx, buf->pool, buf->lookahead);
			v->data = FUNC5(buf->ctx, buf->pool, FUNC9(buf->string) + 2);
			v->data[0] = '-';
			FUNC8(v->data + 1, buf->string);
		}
		else
		{
			v = FUNC3(buf->ctx, buf->pool, buf->lookahead, buf->string);
		}
		FUNC6(buf);
		FUNC10(buf);
		return v;
	}

	if (buf->lookahead == CSS_KEYWORD)
	{
		v = FUNC3(buf->ctx, buf->pool, CSS_KEYWORD, buf->string);
		FUNC6(buf);
		if (FUNC0(buf, '('))
		{
			FUNC10(buf);
			v->type = '(';
			v->args = FUNC7(buf);
			FUNC1(buf, ')');
		}
		FUNC10(buf);
		return v;
	}

	switch (buf->lookahead)
	{
	case CSS_HASH:
	case CSS_STRING:
	case CSS_URI:
	case CSS_NUMBER:
	case CSS_LENGTH:
	case CSS_PERCENT:
		v = FUNC3(buf->ctx, buf->pool, buf->lookahead, buf->string);
		FUNC6(buf);
		FUNC10(buf);
		return v;
	}

	FUNC2(buf, "expected value");
}