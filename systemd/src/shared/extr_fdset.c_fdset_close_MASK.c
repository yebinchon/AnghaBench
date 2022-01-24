#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FDSet ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(FDSet *s) {
        void *p;

        while ((p = FUNC4(FUNC0(s)))) {
                /* Valgrind's fd might have ended up in this set here, due to fdset_new_fill(). We'll ignore
                 * all failures here, so that the EBADFD that valgrind will return us on close() doesn't
                 * influence us */

                /* When reloading duplicates of the private bus connection fds and suchlike are closed here,
                 * which has no effect at all, since they are only duplicates. So don't be surprised about
                 * these log messages. */

                FUNC3("Closing set fd %i", FUNC1(p));
                (void) FUNC2(FUNC1(p));
        }
}