#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lexbuf {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rule; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ fz_css ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct lexbuf*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct lexbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct lexbuf*,int /*<<< orphan*/ ) ; 

void FUNC3(fz_context *ctx, fz_css *css, const char *source, const char *file)
{
	struct lexbuf buf;
	FUNC0(ctx, &buf, css->pool, source, file);
	FUNC1(&buf);
	css->rule = FUNC2(&buf, css->rule);
}