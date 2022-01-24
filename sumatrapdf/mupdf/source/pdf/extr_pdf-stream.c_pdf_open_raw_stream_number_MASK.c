#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ stm_ofs; int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_xref_entry ;
struct TYPE_9__ {int /*<<< orphan*/  file; } ;
typedef  TYPE_2__ pdf_document ;
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int,int*,int*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 

fz_stream *
FUNC4(fz_context *ctx, pdf_document *doc, int num)
{
	pdf_xref_entry *x;
	int orig_num, orig_gen;

	if (num <= 0 || num >= FUNC3(ctx, doc))
		FUNC0(ctx, FZ_ERROR_GENERIC, "object id out of range (%d 0 R)", num);

	x = FUNC1(ctx, doc, num);
	if (x->stm_ofs == 0)
		FUNC0(ctx, FZ_ERROR_GENERIC, "object is not a stream");

	return FUNC2(ctx, doc->file, doc, x->obj, num, &orig_num, &orig_gen, x->stm_ofs);
}