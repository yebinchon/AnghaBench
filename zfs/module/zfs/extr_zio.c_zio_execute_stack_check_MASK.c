#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  io_spa; } ;
typedef  TYPE_2__ zio_t ;
struct TYPE_7__ {scalar_t__ tx_sync_thread; } ;
struct TYPE_9__ {int /*<<< orphan*/  dp_spa; TYPE_1__ dp_tx; } ;
typedef  TYPE_3__ dsl_pool_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ZIO_TASKQ_ISSUE ; 
 int /*<<< orphan*/  ZIO_TASKQ_ISSUE_HIGH ; 
 scalar_t__ curthread ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

boolean_t
FUNC3(zio_t *zio)
{
#if !defined(HAVE_LARGE_STACKS)
	dsl_pool_t *dp = FUNC0(zio->io_spa);

	/* Executing in txg_sync_thread() context. */
	if (dp && curthread == dp->dp_tx.tx_sync_thread)
		return (B_TRUE);

	/* Pool initialization outside of zio_taskq context. */
	if (dp && FUNC1(dp->dp_spa) &&
	    !FUNC2(zio, ZIO_TASKQ_ISSUE) &&
	    !FUNC2(zio, ZIO_TASKQ_ISSUE_HIGH))
		return (B_TRUE);
#endif /* HAVE_LARGE_STACKS */

	return (B_FALSE);
}