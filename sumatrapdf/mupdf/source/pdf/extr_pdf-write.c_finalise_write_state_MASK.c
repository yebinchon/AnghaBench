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
struct TYPE_3__ {int /*<<< orphan*/  page_object_lists; int /*<<< orphan*/  hints_length; int /*<<< orphan*/  hints_s; int /*<<< orphan*/  linear_t; int /*<<< orphan*/  linear_n; int /*<<< orphan*/  linear_e; int /*<<< orphan*/  linear_o; int /*<<< orphan*/  linear_h1; int /*<<< orphan*/  linear_h0; int /*<<< orphan*/  linear_l; int /*<<< orphan*/  rev_renumber_map; int /*<<< orphan*/  renumber_map; int /*<<< orphan*/  gen_list; int /*<<< orphan*/  ofs_list; int /*<<< orphan*/  use_list; } ;
typedef  TYPE_1__ pdf_write_state ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(fz_context *ctx, pdf_write_state *opts)
{
	FUNC0(ctx, opts->use_list);
	FUNC0(ctx, opts->ofs_list);
	FUNC0(ctx, opts->gen_list);
	FUNC0(ctx, opts->renumber_map);
	FUNC0(ctx, opts->rev_renumber_map);
	FUNC2(ctx, opts->linear_l);
	FUNC2(ctx, opts->linear_h0);
	FUNC2(ctx, opts->linear_h1);
	FUNC2(ctx, opts->linear_o);
	FUNC2(ctx, opts->linear_e);
	FUNC2(ctx, opts->linear_n);
	FUNC2(ctx, opts->linear_t);
	FUNC2(ctx, opts->hints_s);
	FUNC2(ctx, opts->hints_length);
	FUNC1(ctx, opts->page_object_lists);
}