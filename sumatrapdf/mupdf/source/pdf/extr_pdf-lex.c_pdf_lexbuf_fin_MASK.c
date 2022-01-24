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
struct TYPE_3__ {scalar_t__ size; scalar_t__ base_size; int /*<<< orphan*/  scratch; } ;
typedef  TYPE_1__ pdf_lexbuf ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(fz_context *ctx, pdf_lexbuf *lb)
{
	if (lb && lb->size != lb->base_size)
		FUNC0(ctx, lb->scratch);
}