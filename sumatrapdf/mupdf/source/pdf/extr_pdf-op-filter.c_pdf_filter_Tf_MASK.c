#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_processor ;
typedef  int /*<<< orphan*/  pdf_font_desc ;
struct TYPE_10__ {TYPE_3__* gstate; int /*<<< orphan*/ * font_name; } ;
typedef  TYPE_4__ pdf_filter_processor ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_7__ {float size; int /*<<< orphan*/  font; } ;
struct TYPE_8__ {TYPE_1__ text; } ;
struct TYPE_9__ {TYPE_2__ pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  Font ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(fz_context *ctx, pdf_processor *proc, const char *name, pdf_font_desc *font, float size)
{
	pdf_filter_processor *p = (pdf_filter_processor*)proc;
	FUNC2(ctx, p, 0);
	FUNC3(ctx, p->font_name);
	p->font_name = NULL;
	p->font_name = name ? FUNC4(ctx, name) : NULL;
	FUNC5(ctx, p->gstate->pending.text.font);
	p->gstate->pending.text.font = FUNC6(ctx, font);
	p->gstate->pending.text.size = size;
	FUNC1(ctx, p, FUNC0(Font), name);
}