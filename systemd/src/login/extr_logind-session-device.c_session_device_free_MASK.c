#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct TYPE_12__* node; int /*<<< orphan*/  dev; TYPE_2__* session; TYPE_1__* device; int /*<<< orphan*/  fd; scalar_t__ pushed_fd; } ;
struct TYPE_11__ {int /*<<< orphan*/  devices; int /*<<< orphan*/  id; } ;
struct TYPE_10__ {int /*<<< orphan*/  session_devices; } ;
typedef  TYPE_3__ SessionDevice ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  SESSION_DEVICE_RELEASE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sd_by_device ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

void FUNC10(SessionDevice *sd) {
        FUNC1(sd);

        /* Make sure to remove the pushed fd. */
        if (sd->pushed_fd)
                (void) FUNC7(false,
                                  "FDSTOREREMOVE=1\n"
                                  "FDNAME=session-%s-device-%u-%u",
                                  sd->session->id, FUNC4(sd->dev), FUNC5(sd->dev));

        FUNC9(sd);
        FUNC8(sd, SESSION_DEVICE_RELEASE);
        FUNC6(sd->fd);

        FUNC0(sd_by_device, sd->device->session_devices, sd);

        FUNC3(sd->session->devices, &sd->dev);

        FUNC2(sd->node);
        FUNC2(sd);
}