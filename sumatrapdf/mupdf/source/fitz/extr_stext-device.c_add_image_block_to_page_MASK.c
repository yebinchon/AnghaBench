#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_stext_page ;
struct TYPE_6__ {int /*<<< orphan*/  image; int /*<<< orphan*/  transform; } ;
struct TYPE_7__ {TYPE_1__ i; } ;
struct TYPE_8__ {int /*<<< orphan*/  bbox; TYPE_2__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ fz_stext_block ;
typedef  int /*<<< orphan*/  fz_matrix ;
typedef  int /*<<< orphan*/  fz_image ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_STEXT_BLOCK_IMAGE ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fz_unit_rect ; 

__attribute__((used)) static fz_stext_block *
FUNC3(fz_context *ctx, fz_stext_page *page, fz_matrix ctm, fz_image *image)
{
	fz_stext_block *block = FUNC0(ctx, page);
	block->type = FZ_STEXT_BLOCK_IMAGE;
	block->u.i.transform = ctm;
	block->u.i.image = FUNC1(ctx, image);
	block->bbox = FUNC2(fz_unit_rect, ctm);
	return block;
}