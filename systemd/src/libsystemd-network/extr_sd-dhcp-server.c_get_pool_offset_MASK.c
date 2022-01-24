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
struct TYPE_4__ {int pool_size; int subnet; int pool_offset; int netmask; } ;
typedef  TYPE_1__ sd_dhcp_server ;
typedef  int be32_t ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(sd_dhcp_server *server, be32_t requested_ip) {
        FUNC0(server);

        if (!server->pool_size)
                return -EINVAL;

        if (FUNC1(requested_ip) < (FUNC1(server->subnet) | server->pool_offset) ||
            FUNC1(requested_ip) >= (FUNC1(server->subnet) | (server->pool_offset + server->pool_size)))
                return -ERANGE;

        return FUNC1(requested_ip & ~server->netmask) - server->pool_offset;
}