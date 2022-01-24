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
 int SUPERVISED_AUTODETECT ; 
 int SUPERVISED_SYSTEMD ; 
 int SUPERVISED_UPSTART ; 
 char* FUNC0 (char*) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 

int FUNC3(int mode) {
    if (mode == SUPERVISED_AUTODETECT) {
        const char *upstart_job = FUNC0("UPSTART_JOB");
        const char *notify_socket = FUNC0("NOTIFY_SOCKET");

        if (upstart_job) {
            FUNC2();
        } else if (notify_socket) {
            FUNC1();
        }
    } else if (mode == SUPERVISED_UPSTART) {
        return FUNC2();
    } else if (mode == SUPERVISED_SYSTEMD) {
        return FUNC1();
    }

    return 0;
}