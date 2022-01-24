#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_5__ {int jumped; int poll_resync; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(sd_event_source *source, int fd, uint32_t revents, void *userdata) {
        Manager *m = userdata;

        FUNC0(m);

        /* rearm timer */
        FUNC2(m);

        /* skip our own jumps */
        if (m->jumped) {
                m->jumped = false;
                return 0;
        }

        /* resync */
        FUNC1("System time changed. Resyncing.");
        m->poll_resync = true;

        return FUNC3(m);
}