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
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

void
FUNC1(fz_context *ctx, fz_output *out)
{
	FUNC0(ctx, out, "<?xml version=\"1.0\"?>\n");
	FUNC0(ctx, out, "<!DOCTYPE html");
	FUNC0(ctx, out, " PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\"");
	FUNC0(ctx, out, " \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
	FUNC0(ctx, out, "<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
	FUNC0(ctx, out, "<head>\n");
	FUNC0(ctx, out, "<style>\n");
	FUNC0(ctx, out, "p{white-space:pre-wrap}\n");
	FUNC0(ctx, out, "</style>\n");
	FUNC0(ctx, out, "</head>\n");
	FUNC0(ctx, out, "<body>\n");
}