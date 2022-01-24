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
	FUNC0(ctx, out, "<!DOCTYPE html>\n");
	FUNC0(ctx, out, "<html>\n");
	FUNC0(ctx, out, "<head>\n");
	FUNC0(ctx, out, "<style>\n");
	FUNC0(ctx, out, "body{background-color:gray}\n");
	FUNC0(ctx, out, "div{margin:1em auto}\n");
	FUNC0(ctx, out, "</style>\n");
	FUNC0(ctx, out, "</head>\n");
	FUNC0(ctx, out, "<body>\n");
}