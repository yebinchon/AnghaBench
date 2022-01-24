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
typedef  int /*<<< orphan*/  fz_font ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 float FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, fz_buffer *buf, fz_font *font, const char *text, float y, float h)
{
	float tw = FUNC2(ctx, font, text) * h;
	FUNC1(ctx, buf, "BT\n");
	FUNC0(ctx, buf, "/Times %g Tf\n", h);
	FUNC0(ctx, buf, "%g %g Td\n", (190-tw)/2, y);
	FUNC3(ctx, buf, font, text);
	FUNC1(ctx, buf, " Tj\n");
	FUNC1(ctx, buf, "ET\n");
}