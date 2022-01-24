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
struct lexbuf {scalar_t__ lookahead; int /*<<< orphan*/  pool; int /*<<< orphan*/  ctx; int /*<<< orphan*/ * string; } ;
struct TYPE_4__ {void* cond; } ;
typedef  TYPE_1__ fz_css_selector ;

/* Variables and functions */
 scalar_t__ CSS_KEYWORD ; 
 scalar_t__ FUNC0 (struct lexbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct lexbuf*,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct lexbuf*) ; 
 void* FUNC5 (struct lexbuf*) ; 

__attribute__((used)) static fz_css_selector *FUNC6(struct lexbuf *buf)
{
	fz_css_selector *s;

	if (FUNC0(buf, '*'))
	{
		s = FUNC2(buf->ctx, buf->pool, NULL);
		if (FUNC3(buf->lookahead))
			s->cond = FUNC5(buf);
		return s;
	}
	else if (buf->lookahead == CSS_KEYWORD)
	{
		s = FUNC2(buf->ctx, buf->pool, buf->string);
		FUNC4(buf);
		if (FUNC3(buf->lookahead))
			s->cond = FUNC5(buf);
		return s;
	}
	else if (FUNC3(buf->lookahead))
	{
		s = FUNC2(buf->ctx, buf->pool, NULL);
		s->cond = FUNC5(buf);
		return s;
	}

	FUNC1(buf, "expected selector");
}