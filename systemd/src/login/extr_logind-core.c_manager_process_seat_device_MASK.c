#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_device ;
struct TYPE_11__ {int /*<<< orphan*/  seat; } ;
struct TYPE_10__ {int /*<<< orphan*/  seats; int /*<<< orphan*/  devices; } ;
typedef  int /*<<< orphan*/  Seat ;
typedef  TYPE_1__ Manager ;
typedef  TYPE_2__ Device ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_ACTION_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC7 (TYPE_1__*,char const*,int,TYPE_2__**) ; 
 int FUNC8 (TYPE_1__*,char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,char const**) ; 
 int FUNC10 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(Manager *m, sd_device *d) {
        Device *device;
        int r;

        FUNC0(m);

        if (FUNC2(d, DEVICE_ACTION_REMOVE)) {
                const char *syspath;

                r = FUNC10(d, &syspath);
                if (r < 0)
                        return 0;

                device = FUNC4(m->devices, syspath);
                if (!device)
                        return 0;

                FUNC12(device->seat);
                FUNC3(device);

        } else {
                const char *sn, *syspath;
                bool master;
                Seat *seat;

                if (FUNC9(d, "ID_SEAT", &sn) < 0 || FUNC5(sn))
                        sn = "seat0";

                if (!FUNC13(sn)) {
                        FUNC6(d, "Device with invalid seat name %s found, ignoring.", sn);
                        return 0;
                }

                seat = FUNC4(m->seats, sn);
                master = FUNC11(d, "master-of-seat") > 0;

                /* Ignore non-master devices for unknown seats */
                if (!master && !seat)
                        return 0;

                r = FUNC10(d, &syspath);
                if (r < 0)
                        return r;

                r = FUNC7(m, syspath, master, &device);
                if (r < 0)
                        return r;

                if (!seat) {
                        r = FUNC8(m, sn, &seat);
                        if (r < 0) {
                                if (!device->seat)
                                        FUNC3(device);

                                return r;
                        }
                }

                FUNC1(device, seat);
                FUNC14(seat);
        }

        return 0;
}