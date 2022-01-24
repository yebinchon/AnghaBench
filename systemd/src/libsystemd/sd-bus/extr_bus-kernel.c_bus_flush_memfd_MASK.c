#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int n_memfd_cache; TYPE_1__* memfd_cache; } ;
typedef  TYPE_2__ sd_bus ;
struct TYPE_5__ {int /*<<< orphan*/  mapped; int /*<<< orphan*/  address; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(sd_bus *b) {
        unsigned i;

        FUNC0(b);

        for (i = 0; i < b->n_memfd_cache; i++)
                FUNC1(b->memfd_cache[i].fd, b->memfd_cache[i].address, b->memfd_cache[i].mapped);
}