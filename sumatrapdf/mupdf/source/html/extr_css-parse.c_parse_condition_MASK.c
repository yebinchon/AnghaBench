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
struct lexbuf {char lookahead; char* string; int /*<<< orphan*/  pool; int /*<<< orphan*/  ctx; } ;
struct TYPE_4__ {char type; void* val; } ;
typedef  TYPE_1__ fz_css_condition ;

/* Variables and functions */
 scalar_t__ CSS_HASH ; 
 char CSS_KEYWORD ; 
 scalar_t__ FUNC0 (struct lexbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct lexbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct lexbuf*,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct lexbuf*) ; 
 void* FUNC5 (struct lexbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct lexbuf*) ; 

__attribute__((used)) static fz_css_condition *FUNC7(struct lexbuf *buf)
{
	fz_css_condition *c;

	if (FUNC0(buf, ':'))
	{
		FUNC0(buf, ':'); /* swallow css3 :: syntax and pretend it's a normal pseudo-class */
		if (buf->lookahead != CSS_KEYWORD)
			FUNC2(buf, "expected keyword after ':'");
		c = FUNC3(buf->ctx, buf->pool, ':', "pseudo", buf->string);
		FUNC4(buf);
		if (FUNC0(buf, '('))
		{
			FUNC6(buf);
			if (FUNC0(buf, CSS_KEYWORD))
				FUNC6(buf);
			FUNC1(buf, ')');
		}
		return c;
	}

	if (FUNC0(buf, '.'))
	{
		if (buf->lookahead != CSS_KEYWORD)
			FUNC2(buf, "expected keyword after '.'");
		c = FUNC3(buf->ctx, buf->pool, '.', "class", buf->string);
		FUNC4(buf);
		return c;
	}

	if (FUNC0(buf, '['))
	{
		FUNC6(buf);

		if (buf->lookahead != CSS_KEYWORD)
			FUNC2(buf, "expected keyword after '['");
		c = FUNC3(buf->ctx, buf->pool, '[', buf->string, NULL);
		FUNC4(buf);

		FUNC6(buf);

		if (FUNC0(buf, '='))
		{
			c->type = '=';
			c->val = FUNC5(buf);
		}
		else if (FUNC0(buf, '|'))
		{
			FUNC1(buf, '=');
			c->type = '|';
			c->val = FUNC5(buf);
		}
		else if (FUNC0(buf, '~'))
		{
			FUNC1(buf, '=');
			c->type = '~';
			c->val = FUNC5(buf);
		}

		FUNC1(buf, ']');

		return c;
	}

	if (buf->lookahead == CSS_HASH)
	{
		c = FUNC3(buf->ctx, buf->pool, '#', "id", buf->string);
		FUNC4(buf);
		return c;
	}

	FUNC2(buf, "expected condition");
}