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
typedef  int /*<<< orphan*/  Set ;
typedef  int /*<<< orphan*/  JournalFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

JournalFile* FUNC5(
                JournalFile *f,
                Set *deferred_closes) {

        int r;

        FUNC0(f);

        if (deferred_closes) {

                r = FUNC4(deferred_closes, f);
                if (r < 0)
                        FUNC3(r, "Failed to add file to deferred close set, closing immediately.");
                else {
                        (void) FUNC2(f, false);
                        return NULL;
                }
        }

        return FUNC1(f);
}