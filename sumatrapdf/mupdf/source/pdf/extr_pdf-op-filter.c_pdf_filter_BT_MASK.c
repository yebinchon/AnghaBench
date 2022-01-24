#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_processor ;
struct TYPE_4__ {void* tlm; void* tm; } ;
struct TYPE_5__ {int BT_pending; TYPE_1__ tos; } ;
typedef  TYPE_2__ pdf_filter_processor ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 void* fz_identity ; 

__attribute__((used)) static void
FUNC1(fz_context *ctx, pdf_processor *proc)
{
	pdf_filter_processor *p = (pdf_filter_processor*)proc;
	FUNC0(ctx, p, 0);
	p->tos.tm = fz_identity;
	p->tos.tlm = fz_identity;
	p->BT_pending = 1;
}