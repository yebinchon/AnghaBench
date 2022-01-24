#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int clip; scalar_t__ clip_even_odd; } ;
typedef  TYPE_1__ pdf_run_processor ;
typedef  int /*<<< orphan*/  pdf_processor ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(fz_context *ctx, pdf_processor *proc)
{
	pdf_run_processor *pr = (pdf_run_processor *)proc;
	pr->clip = 1;
	pr->clip_even_odd = 0;
}