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
struct TYPE_3__ {struct TYPE_3__* vmtx; struct TYPE_3__* hmtx; struct TYPE_3__* cid_to_ucs; struct TYPE_3__* cid_to_gid; int /*<<< orphan*/  to_unicode; int /*<<< orphan*/  to_ttf_cmap; int /*<<< orphan*/  encoding; int /*<<< orphan*/  font; } ;
typedef  TYPE_1__ pdf_font_desc ;
typedef  int /*<<< orphan*/  fz_storable ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, fz_storable *fontdesc_)
{
	pdf_font_desc *fontdesc = (pdf_font_desc *)fontdesc_;

	FUNC0(ctx, fontdesc->font);
	FUNC2(ctx, fontdesc->encoding);
	FUNC2(ctx, fontdesc->to_ttf_cmap);
	FUNC2(ctx, fontdesc->to_unicode);
	FUNC1(ctx, fontdesc->cid_to_gid);
	FUNC1(ctx, fontdesc->cid_to_ucs);
	FUNC1(ctx, fontdesc->hmtx);
	FUNC1(ctx, fontdesc->vmtx);
	FUNC1(ctx, fontdesc);
}