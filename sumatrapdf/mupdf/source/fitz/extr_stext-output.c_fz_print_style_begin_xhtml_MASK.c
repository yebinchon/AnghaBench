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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, fz_output *out, fz_font *font, int sup)
{
	int is_mono = FUNC2(ctx, font);
	int is_bold = FUNC0(ctx, font);
	int is_italic = FUNC1(ctx, font);

	if (sup)
		FUNC3(ctx, out, "<sup>");
	if (is_mono)
		FUNC3(ctx, out, "<tt>");
	if (is_bold)
		FUNC3(ctx, out, "<b>");
	if (is_italic)
		FUNC3(ctx, out, "<i>");
}