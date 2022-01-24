#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_9__ {scalar_t__ family; } ;
struct TYPE_8__ {TYPE_3__* net; int /*<<< orphan*/  self_public_key; } ;
struct TYPE_7__ {void* ip; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ IP_Port ;
typedef  TYPE_2__ DHT ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  NET_PACKET_LAN_DISCOVERY ; 
 void* FUNC0 (scalar_t__,scalar_t__) ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*,TYPE_1__,int /*<<< orphan*/ *,int) ; 

int FUNC5(uint16_t port, DHT *dht)
{
    uint8_t data[crypto_box_PUBLICKEYBYTES + 1];
    data[0] = NET_PACKET_LAN_DISCOVERY;
    FUNC1(data + 1, dht->self_public_key);

    FUNC3(dht->net, port, data, 1 + crypto_box_PUBLICKEYBYTES);

    int res = -1;
    IP_Port ip_port;
    ip_port.port = port;

    /* IPv6 multicast */
    if (dht->net->family == AF_INET6) {
        ip_port.ip = FUNC0(AF_INET6, AF_INET6);

        if (FUNC2(&ip_port.ip))
            if (FUNC4(dht->net, ip_port, data, 1 + crypto_box_PUBLICKEYBYTES) > 0)
                res = 1;
    }

    /* IPv4 broadcast (has to be IPv4-in-IPv6 mapping if socket is AF_INET6 */
    ip_port.ip = FUNC0(dht->net->family, AF_INET);

    if (FUNC2(&ip_port.ip))
        if (FUNC4(dht->net, ip_port, data, 1 + crypto_box_PUBLICKEYBYTES))
            res = 1;

    return res;
}