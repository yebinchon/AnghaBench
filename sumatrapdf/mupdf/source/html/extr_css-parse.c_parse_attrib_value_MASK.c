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
struct lexbuf {scalar_t__ lookahead; int /*<<< orphan*/  string; int /*<<< orphan*/  pool; int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 scalar_t__ CSS_KEYWORD ; 
 scalar_t__ CSS_STRING ; 
 int /*<<< orphan*/  FUNC0 (struct lexbuf*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lexbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct lexbuf*) ; 

__attribute__((used)) static char *FUNC4(struct lexbuf *buf)
{
	char *s;

	if (buf->lookahead == CSS_KEYWORD || buf->lookahead == CSS_STRING)
	{
		s = FUNC1(buf->ctx, buf->pool, buf->string);
		FUNC2(buf);
		FUNC3(buf);
		return s;
	}

	FUNC0(buf, "expected attribute value");
}