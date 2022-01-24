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
typedef  int /*<<< orphan*/  zio_cksum_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* fini_byteswap ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* compute_byteswap ) (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* init_byteswap ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ fletcher_4_ops_t ;
typedef  int /*<<< orphan*/  fletcher_4_ctx_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC4(const void *buf, uint64_t size, zio_cksum_t *zcp)
{
	fletcher_4_ctx_t ctx;
	const fletcher_4_ops_t *ops = FUNC0();

	ops->init_byteswap(&ctx);
	ops->compute_byteswap(&ctx, buf, size);
	ops->fini_byteswap(&ctx, zcp);
}