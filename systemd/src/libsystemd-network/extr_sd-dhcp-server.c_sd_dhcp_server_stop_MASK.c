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
struct TYPE_5__ {void* fd; void* fd_raw; int /*<<< orphan*/  receive_message; } ;
typedef  TYPE_1__ sd_dhcp_server ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(sd_dhcp_server *server) {
        FUNC0(server, -EINVAL);

        server->receive_message =
                FUNC3(server->receive_message);

        server->fd_raw = FUNC2(server->fd_raw);
        server->fd = FUNC2(server->fd);

        FUNC1(server, "STOPPED");

        return 0;
}