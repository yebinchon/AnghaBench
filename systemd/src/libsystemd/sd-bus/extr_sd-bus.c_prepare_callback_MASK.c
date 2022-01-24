#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
struct TYPE_8__ {scalar_t__ output_fd; scalar_t__ input_fd; int /*<<< orphan*/  time_event_source; int /*<<< orphan*/  input_io_event_source; int /*<<< orphan*/  output_io_event_source; } ;
typedef  TYPE_1__ sd_event_source ;
typedef  TYPE_1__ sd_bus ;

/* Variables and functions */
 int POLLIN ; 
 int POLLOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(sd_event_source *s, void *userdata) {
        sd_bus *bus = userdata;
        int r, e;
        usec_t until;

        FUNC0(s);
        FUNC0(bus);

        e = FUNC3(bus);
        if (e < 0) {
                r = e;
                goto fail;
        }

        if (bus->output_fd != bus->input_fd) {

                r = FUNC6(bus->input_io_event_source, e & POLLIN);
                if (r < 0)
                        goto fail;

                r = FUNC6(bus->output_io_event_source, e & POLLOUT);
        } else
                r = FUNC6(bus->input_io_event_source, e);
        if (r < 0)
                goto fail;

        r = FUNC4(bus, &until);
        if (r < 0)
                goto fail;
        if (r > 0) {
                int j;

                j = FUNC7(bus->time_event_source, until);
                if (j < 0) {
                        r = j;
                        goto fail;
                }
        }

        r = FUNC5(bus->time_event_source, r > 0);
        if (r < 0)
                goto fail;

        return 1;

fail:
        FUNC2(r, "Preparing of bus events failed, closing down: %m");
        FUNC1(bus);

        return 1;
}