#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_4__* out; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ pdf_write_state ;
struct TYPE_16__ {scalar_t__ do_encrypt; scalar_t__ do_incremental; scalar_t__ do_linear; scalar_t__ do_garbage; } ;
typedef  TYPE_2__ pdf_write_options ;
struct TYPE_17__ {scalar_t__ repair_attempted; } ;
typedef  TYPE_3__ pdf_document ;
struct TYPE_18__ {int /*<<< orphan*/  as_stream; } ;
typedef  TYPE_4__ fz_output ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 scalar_t__ PDF_ENCRYPT_KEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ pdf_default_write_options ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__*) ; 

void FUNC4(fz_context *ctx, pdf_document *doc, fz_output *out, pdf_write_options *in_opts)
{
	pdf_write_options opts_defaults = pdf_default_write_options;
	pdf_write_state opts = { 0 };

	if (!doc || !out)
		return;

	if (!in_opts)
		in_opts = &opts_defaults;

	if (in_opts->do_incremental && doc->repair_attempted)
		FUNC1(ctx, FZ_ERROR_GENERIC, "Can't do incremental writes on a repaired file");
	if (in_opts->do_incremental && in_opts->do_garbage)
		FUNC1(ctx, FZ_ERROR_GENERIC, "Can't do incremental writes with garbage collection");
	if (in_opts->do_incremental && in_opts->do_linear)
		FUNC1(ctx, FZ_ERROR_GENERIC, "Can't do incremental writes with linearisation");
	if (in_opts->do_incremental && in_opts->do_encrypt != PDF_ENCRYPT_KEEP)
		FUNC1(ctx, FZ_ERROR_GENERIC, "Can't do incremental writes when changing encryption");
	if (FUNC2(ctx, doc) && !out->as_stream)
		FUNC1(ctx, FZ_ERROR_GENERIC, "Can't write pdf that has unsaved sigs to a fz_output unless it supports fz_stream_from_output!");

	FUNC3(ctx, doc, in_opts);

	opts.out = out;

	FUNC0(ctx, doc, &opts, in_opts);
}