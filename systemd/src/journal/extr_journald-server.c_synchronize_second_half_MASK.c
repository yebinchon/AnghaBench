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
typedef  int /*<<< orphan*/  sd_event_source ;
typedef  int /*<<< orphan*/  Varlink ;
typedef  int /*<<< orphan*/  Server ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(sd_event_source *event_source, void *userdata) {
        Varlink *link = userdata;
        Server *s;
        int r;

        FUNC0(link);
        FUNC1(s = FUNC5(link));

        /* This is the "second half" of the Synchronize() varlink method. This function is called as deferred
         * event source at a low priority to ensure the synchronization completes after all queued log
         * messages are processed. */
        FUNC4(s);

        /* Let's get rid of the event source now, by marking it as non-floating again. It then has no ref
         * anymore and is immediately destroyed after we return from this function, i.e. from this event
         * source handler at the end. */
        r = FUNC3(event_source, false);
        if (r < 0)
                return FUNC2(r, "Failed to mark event source as non-floating: %m");

        return FUNC6(link, NULL);
}