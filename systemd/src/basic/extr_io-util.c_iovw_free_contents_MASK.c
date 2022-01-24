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
struct iovec_wrapper {size_t count; scalar_t__ size_bytes; TYPE_1__* iovec; } ;
struct TYPE_3__ {int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 

void FUNC2(struct iovec_wrapper *iovw, bool free_vectors) {
        if (free_vectors)
                for (size_t i = 0; i < iovw->count; i++)
                        FUNC0(iovw->iovec[i].iov_base);

        iovw->iovec = FUNC1(iovw->iovec);
        iovw->count = 0;
        iovw->size_bytes = 0;
}