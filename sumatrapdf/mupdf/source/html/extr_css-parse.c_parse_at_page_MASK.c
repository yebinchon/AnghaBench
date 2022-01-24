#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lexbuf {int /*<<< orphan*/  pool; int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  fz_css_selector ;
typedef  int /*<<< orphan*/  fz_css_rule ;
typedef  int /*<<< orphan*/  fz_css_property ;

/* Variables and functions */
 char CSS_KEYWORD ; 
 scalar_t__ FUNC0 (struct lexbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct lexbuf*,char) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct lexbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct lexbuf*) ; 

__attribute__((used)) static fz_css_rule *FUNC6(struct lexbuf *buf)
{
	fz_css_selector *s = NULL;
	fz_css_property *p = NULL;

	FUNC5(buf);
	if (FUNC0(buf, ':'))
	{
		FUNC1(buf, CSS_KEYWORD);
		FUNC5(buf);
	}
	FUNC1(buf, '{');
	p = FUNC4(buf);
	FUNC1(buf, '}');
	FUNC5(buf);

	s = FUNC3(buf->ctx, buf->pool, "@page");
	return FUNC2(buf->ctx, buf->pool, s, p);
}