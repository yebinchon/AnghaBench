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
typedef  int /*<<< orphan*/  fz_font ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, fz_output *out, fz_font *font, float size, int sup, int color)
{
	char family[80];

	int is_bold = FUNC1(ctx, font);
	int is_italic = FUNC2(ctx, font);
	int is_serif = FUNC4(ctx, font);
	int is_mono = FUNC3(ctx, font);

	FUNC0(ctx, font, family, sizeof family, is_mono, is_serif);

	if (sup) FUNC6(ctx, out, "<sup>");
	if (is_mono) FUNC6(ctx, out, "<tt>");
	if (is_bold) FUNC6(ctx, out, "<b>");
	if (is_italic) FUNC6(ctx, out, "<i>");
	FUNC5(ctx, out, "<span style=\"font-family:%s;font-size:%gpt", family, size);
	if (color != 0)
		FUNC5(ctx, out, ";color:#%06x", color);
	FUNC5(ctx, out, "\">");
}