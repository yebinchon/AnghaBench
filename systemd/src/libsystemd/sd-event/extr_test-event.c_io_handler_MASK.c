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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sd_event_source ;

/* Variables and functions */
 void* FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  SD_EVENT_OFF ; 
 int /*<<< orphan*/  SD_EVENT_ONESHOT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int got_a ; 
 int got_b ; 
 int got_d ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(sd_event_source *s, int fd, uint32_t revents, void *userdata) {

        FUNC4("got IO on %c", FUNC1(userdata));

        if (userdata == FUNC0('a')) {
                FUNC3(FUNC5(s, SD_EVENT_OFF) >= 0);
                FUNC3(!got_a);
                got_a = true;
        } else if (userdata == FUNC0('b')) {
                FUNC3(!got_b);
                got_b = true;
        } else if (userdata == FUNC0('d')) {
                got_d++;
                if (got_d < 2)
                        FUNC3(FUNC5(s, SD_EVENT_ONESHOT) >= 0);
                else
                        FUNC3(FUNC5(s, SD_EVENT_OFF) >= 0);
        } else
                FUNC2("Yuck!");

        return 1;
}