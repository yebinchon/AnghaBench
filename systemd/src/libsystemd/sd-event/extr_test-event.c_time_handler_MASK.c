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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sd_event_source ;

/* Variables and functions */
 void* FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  defer_handler ; 
 scalar_t__ do_quit ; 
 int got_c ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(sd_event_source *s, uint64_t usec, void *userdata) {
        FUNC4("got timer on %c", FUNC1(userdata));

        if (userdata == FUNC0('c')) {

                if (do_quit) {
                        sd_event_source *p;

                        FUNC3(FUNC5(FUNC6(s), &p, defer_handler, FUNC0('d')) >= 0);
                        FUNC3(FUNC7(p, SD_EVENT_ONESHOT) >= 0);
                } else {
                        FUNC3(!got_c);
                        got_c = true;
                }
        } else
                FUNC2("Huh?");

        return 2;
}