#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  method; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  method; } ;
struct TYPE_7__ {int /*<<< orphan*/ * u; int /*<<< orphan*/ * o; int /*<<< orphan*/  r; TYPE_2__ strf; TYPE_1__ stmf; int /*<<< orphan*/  length; int /*<<< orphan*/  v; } ;
typedef  TYPE_3__ pdf_crypt ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 

void
FUNC1(fz_context *ctx, fz_output *out, pdf_crypt *crypt)
{
	int i;

	FUNC0(ctx, out, "crypt {\n");

	FUNC0(ctx, out, "\tv=%d length=%d\n", crypt->v, crypt->length);
	FUNC0(ctx, out, "\tstmf method=%d length=%d\n", crypt->stmf.method, crypt->stmf.length);
	FUNC0(ctx, out, "\tstrf method=%d length=%d\n", crypt->strf.method, crypt->strf.length);
	FUNC0(ctx, out, "\tr=%d\n", crypt->r);

	FUNC0(ctx, out, "\to=<");
	for (i = 0; i < 32; i++)
		FUNC0(ctx, out, "%02X", crypt->o[i]);
	FUNC0(ctx, out, ">\n");

	FUNC0(ctx, out, "\tu=<");
	for (i = 0; i < 32; i++)
		FUNC0(ctx, out, "%02X", crypt->u[i]);
	FUNC0(ctx, out, ">\n");

	FUNC0(ctx, out, "}\n");
}