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
typedef  int /*<<< orphan*/  sd_dhcp_client ;

/* Variables and functions */
 int SD_DHCP_CLIENT_EVENT_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void FUNC5(sd_dhcp_client *client, int error) {
        FUNC0(client);

        if (error < 0)
                FUNC4(client, error, "STOPPED: %m");
        else if (error == SD_DHCP_CLIENT_EVENT_STOP)
                FUNC3(client, "STOPPED");
        else
                FUNC3(client, "STOPPED: Unknown event");

        FUNC2(client, error);

        FUNC1(client);
}