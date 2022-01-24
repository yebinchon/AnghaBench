#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_4__ {int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ pdf_document ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *) ; 

fz_stream *
FUNC2(fz_context *ctx, pdf_document *doc, int num, pdf_obj *dict, int64_t stm_ofs)
{
	if (stm_ofs == 0)
		FUNC0(ctx, FZ_ERROR_GENERIC, "object is not a stream");
	return FUNC1(ctx, doc, doc->file, dict, num, stm_ofs, NULL);
}