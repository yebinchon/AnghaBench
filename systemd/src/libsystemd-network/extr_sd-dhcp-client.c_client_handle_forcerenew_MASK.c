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
typedef  int /*<<< orphan*/  DHCPMessage ;

/* Variables and functions */
 int DHCP_FORCERENEW ; 
 int ENOMSG ; 
 int FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(sd_dhcp_client *client, DHCPMessage *force, size_t len) {
        int r;

        r = FUNC0(force, len, NULL, NULL, NULL);
        if (r != DHCP_FORCERENEW)
                return -ENOMSG;

        FUNC1(client, "FORCERENEW");

        return 0;
}