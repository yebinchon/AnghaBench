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
struct TYPE_3__ {int* ofs_list; int* gen_list; scalar_t__* use_list; } ;
typedef  TYPE_1__ pdf_write_state ;
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(fz_context *ctx, pdf_document *doc, pdf_write_state *opts, pdf_obj *index, fz_buffer *fzbuf, int from, int to)
{
	int num;

	FUNC1(ctx, index, from);
	FUNC1(ctx, index, to - from);
	for (num = from; num < to; num++)
	{
		FUNC0(ctx, fzbuf, opts->use_list[num] ? 1 : 0);
		FUNC0(ctx, fzbuf, opts->ofs_list[num]>>24);
		FUNC0(ctx, fzbuf, opts->ofs_list[num]>>16);
		FUNC0(ctx, fzbuf, opts->ofs_list[num]>>8);
		FUNC0(ctx, fzbuf, opts->ofs_list[num]);
		FUNC0(ctx, fzbuf, opts->gen_list[num]);
	}
}