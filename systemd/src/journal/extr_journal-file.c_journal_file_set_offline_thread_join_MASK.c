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
struct TYPE_4__ {scalar_t__ offline_state; int /*<<< orphan*/  cache_fd; int /*<<< orphan*/  mmap; int /*<<< orphan*/  offline_thread; } ;
typedef  TYPE_1__ JournalFile ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ OFFLINE_JOINED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(JournalFile *f) {
        int r;

        FUNC0(f);

        if (f->offline_state == OFFLINE_JOINED)
                return 0;

        r = FUNC2(f->offline_thread, NULL);
        if (r)
                return -r;

        f->offline_state = OFFLINE_JOINED;

        if (FUNC1(f->mmap, f->cache_fd))
                return -EIO;

        return 0;
}