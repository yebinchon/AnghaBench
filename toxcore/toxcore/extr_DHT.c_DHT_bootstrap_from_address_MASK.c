#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint16_t ;
struct TYPE_10__ {int /*<<< orphan*/  family; } ;
struct TYPE_9__ {void* port; TYPE_2__ ip; } ;
typedef  TYPE_1__ IP_Port ;
typedef  TYPE_2__ IP ;
typedef  int /*<<< orphan*/  DHT ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (char const*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

int FUNC5(DHT *dht, const char *address, uint8_t ipv6enabled,
                               uint16_t port, const uint8_t *public_key)
{
    IP_Port ip_port_v64;
    IP *ip_extra = NULL;
    IP_Port ip_port_v4;
    FUNC2(&ip_port_v64.ip, ipv6enabled);

    if (ipv6enabled) {
        /* setup for getting BOTH: an IPv6 AND an IPv4 address */
        ip_port_v64.ip.family = AF_UNSPEC;
        FUNC4(&ip_port_v4.ip);
        ip_extra = &ip_port_v4.ip;
    }

    if (FUNC1(address, &ip_port_v64.ip, ip_extra)) {
        ip_port_v64.port = port;
        FUNC0(dht, ip_port_v64, public_key);

        if ((ip_extra != NULL) && FUNC3(ip_extra)) {
            ip_port_v4.port = port;
            FUNC0(dht, ip_port_v4, public_key);
        }

        return 1;
    } else
        return 0;
}