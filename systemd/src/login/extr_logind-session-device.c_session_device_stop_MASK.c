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
struct TYPE_4__ {int active; int type; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ SessionDevice ;

/* Variables and functions */
#define  DEVICE_TYPE_DRM 130 
#define  DEVICE_TYPE_EVDEV 129 
#define  DEVICE_TYPE_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(SessionDevice *sd) {
        FUNC0(sd);

        if (!sd->active)
                return;

        switch (sd->type) {

        case DEVICE_TYPE_DRM:
                if (sd->fd < 0) {
                        FUNC1("Failed to de-activate DRM fd, as the fd was lost (maybe logind restart went wrong?)");
                        return;
                }

                /* On DRM devices we simply drop DRM-Master but keep it open.
                 * This allows the user to keep resources allocated. The
                 * CAP_SYS_ADMIN restriction to DRM-Master prevents users from
                 * circumventing this. */
                FUNC2(sd->fd);
                break;

        case DEVICE_TYPE_EVDEV:
                /* Revoke access on evdev file-descriptors during deactivation.
                 * This will basically prevent any operations on the fd and
                 * cannot be undone. Good side is: it needs no CAP_SYS_ADMIN
                 * protection this way. */
                FUNC3(sd->fd);
                break;

        case DEVICE_TYPE_UNKNOWN:
        default:
                /* fallback for devices without synchronization */
                break;
        }

        sd->active = false;
}