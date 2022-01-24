#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct prof_gctx_dump_iter_arg_s {int /*<<< orphan*/  tsdn; int /*<<< orphan*/  propagate_err; } ;
typedef  int /*<<< orphan*/  prof_gctx_tree_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  bt; } ;
typedef  TYPE_1__ prof_gctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static prof_gctx_t *
FUNC3(prof_gctx_tree_t *gctxs, prof_gctx_t *gctx, void *opaque) {
	prof_gctx_t *ret;
	struct prof_gctx_dump_iter_arg_s *arg =
	    (struct prof_gctx_dump_iter_arg_s *)opaque;

	FUNC0(arg->tsdn, gctx->lock);

	if (FUNC2(arg->tsdn, arg->propagate_err, gctx, &gctx->bt,
	    gctxs)) {
		ret = gctx;
		goto label_return;
	}

	ret = NULL;
label_return:
	FUNC1(arg->tsdn, gctx->lock);
	return ret;
}