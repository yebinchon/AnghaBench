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
 int /*<<< orphan*/  FUNC0 (struct lexbuf*,char) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct lexbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct lexbuf*) ; 

__attribute__((used)) static fz_css_rule *FUNC5(struct lexbuf *buf)
{
	fz_css_selector *s = NULL;
	fz_css_property *p = NULL;

	FUNC4(buf);
	FUNC0(buf, '{');
	p = FUNC3(buf);
	FUNC0(buf, '}');
	FUNC4(buf);

	s = FUNC2(buf->ctx, buf->pool, "@font-face");
	return FUNC1(buf->ctx, buf->pool, s, p);
}