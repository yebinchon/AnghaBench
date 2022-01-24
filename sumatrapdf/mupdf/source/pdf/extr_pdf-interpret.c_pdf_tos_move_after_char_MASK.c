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
struct TYPE_3__ {int /*<<< orphan*/  char_ty; int /*<<< orphan*/  char_tx; int /*<<< orphan*/  tm; int /*<<< orphan*/  char_bbox; int /*<<< orphan*/  text_bbox; } ;
typedef  TYPE_1__ pdf_text_object_state ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(fz_context *ctx, pdf_text_object_state *tos)
{
	tos->text_bbox = FUNC1(tos->text_bbox, tos->char_bbox);
	tos->tm = FUNC0(tos->tm, tos->char_tx, tos->char_ty);
}