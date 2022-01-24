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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  NFS41_START_DRIVER_STARTABLE 131 
#define  NFS41_START_DRIVER_STARTED 130 
#define  NFS41_START_DRIVER_START_IN_PROGRESS 129 
#define  NFS41_START_DRIVER_STOPPED 128 

void FUNC1(int state)
{
    switch (state) {
        case NFS41_START_DRIVER_STARTABLE:
            FUNC0("NFS41_START_DRIVER_STARTABLE\n");
            break;
        case NFS41_START_DRIVER_STOPPED:
            FUNC0("NFS41_START_DRIVER_STOPPED\n");
            break;
        case NFS41_START_DRIVER_START_IN_PROGRESS:
            FUNC0("NFS41_START_DRIVER_START_IN_PROGRESS\n");
            break;
        case NFS41_START_DRIVER_STARTED:
            FUNC0("NFS41_START_DRIVER_STARTED\n");
            break;
        default:
            FUNC0("UNKNOWN DRIVER STATE %d\n", state);
    };

}