#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  fd; TYPE_1__* cache; scalar_t__ windows; } ;
struct TYPE_9__ {int /*<<< orphan*/  fds; } ;
typedef  TYPE_2__ MMapFileDescriptor ;
typedef  TYPE_2__ MMapCache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7(MMapCache *m, MMapFileDescriptor *f) {
        FUNC1(m);
        FUNC1(f);

        /* Make sure that any queued SIGBUS are first dispatched, so
         * that we don't end up with a SIGBUS entry we cannot relate
         * to any existing memory map */

        FUNC5(m);

        while (f->windows)
                FUNC6(f->windows);

        if (f->cache)
                FUNC2(FUNC4(f->cache->fds, FUNC0(f->fd)));

        FUNC3(f);
}