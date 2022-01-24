#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct statvfs {scalar_t__ f_bsize; scalar_t__ f_bfree; } ;
struct TYPE_6__ {scalar_t__ max_size; scalar_t__ min_size; scalar_t__ keep_free; } ;
struct TYPE_7__ {scalar_t__ last_stat_usec; int /*<<< orphan*/  header_size; struct TYPE_7__* header; int /*<<< orphan*/  arena_size; int /*<<< orphan*/  fd; TYPE_1__ metrics; int /*<<< orphan*/  cache_fd; int /*<<< orphan*/  mmap; } ;
typedef  TYPE_2__ JournalFile ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int E2BIG ; 
 int EIO ; 
 scalar_t__ FILE_SIZE_INCREASE ; 
 scalar_t__ LAST_STAT_REFRESH_USEC ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct statvfs*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC11(JournalFile *f, uint64_t offset, uint64_t size) {
        uint64_t old_size, new_size;
        int r;

        FUNC3(f);
        FUNC3(f->header);

        /* We assume that this file is not sparse, and we know that
         * for sure, since we always call posix_fallocate()
         * ourselves */

        if (FUNC8(f->mmap, f->cache_fd))
                return -EIO;

        old_size =
                FUNC7(f->header->header_size) +
                FUNC7(f->header->arena_size);

        new_size = FUNC2(offset + size);
        if (new_size < FUNC7(f->header->header_size))
                new_size = FUNC7(f->header->header_size);

        if (new_size <= old_size) {

                /* We already pre-allocated enough space, but before
                 * we write to it, let's check with fstat() if the
                 * file got deleted, in order make sure we don't throw
                 * away the data immediately. Don't check fstat() for
                 * all writes though, but only once ever 10s. */

                if (f->last_stat_usec + LAST_STAT_REFRESH_USEC > FUNC9(CLOCK_MONOTONIC))
                        return 0;

                return FUNC6(f);
        }

        /* Allocate more space. */

        if (f->metrics.max_size > 0 && new_size > f->metrics.max_size)
                return -E2BIG;

        if (new_size > f->metrics.min_size && f->metrics.keep_free > 0) {
                struct statvfs svfs;

                if (FUNC4(f->fd, &svfs) >= 0) {
                        uint64_t available;

                        available = FUNC1((uint64_t) svfs.f_bfree * (uint64_t) svfs.f_bsize, f->metrics.keep_free);

                        if (new_size - old_size > available)
                                return -E2BIG;
                }
        }

        /* Increase by larger blocks at once */
        new_size = FUNC0(new_size, FILE_SIZE_INCREASE) * FILE_SIZE_INCREASE;
        if (f->metrics.max_size > 0 && new_size > f->metrics.max_size)
                new_size = f->metrics.max_size;

        /* Note that the glibc fallocate() fallback is very
           inefficient, hence we try to minimize the allocation area
           as we can. */
        r = FUNC10(f->fd, old_size, new_size - old_size);
        if (r != 0)
                return -r;

        f->header->arena_size = FUNC5(new_size - FUNC7(f->header->header_size));

        return FUNC6(f);
}