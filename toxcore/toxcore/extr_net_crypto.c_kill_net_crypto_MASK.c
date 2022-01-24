#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_8__ {scalar_t__ crypto_connections_length; TYPE_1__* dht; int /*<<< orphan*/  ip_port_list; int /*<<< orphan*/  tcp_c; int /*<<< orphan*/  connections_mutex; int /*<<< orphan*/  tcp_mutex; } ;
struct TYPE_7__ {int /*<<< orphan*/  net; } ;
typedef  TYPE_2__ Net_Crypto ;

/* Variables and functions */
 int /*<<< orphan*/  NET_PACKET_COOKIE_REQUEST ; 
 int /*<<< orphan*/  NET_PACKET_COOKIE_RESPONSE ; 
 int /*<<< orphan*/  NET_PACKET_CRYPTO_DATA ; 
 int /*<<< orphan*/  NET_PACKET_CRYPTO_HS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

void FUNC7(Net_Crypto *c)
{
    uint32_t i;

    for (i = 0; i < c->crypto_connections_length; ++i) {
        FUNC1(c, i);
    }

    FUNC5(&c->tcp_mutex);
    FUNC5(&c->connections_mutex);

    FUNC3(c->tcp_c);
    FUNC0(&c->ip_port_list);
    FUNC4(c->dht->net, NET_PACKET_COOKIE_REQUEST, NULL, NULL);
    FUNC4(c->dht->net, NET_PACKET_COOKIE_RESPONSE, NULL, NULL);
    FUNC4(c->dht->net, NET_PACKET_CRYPTO_HS, NULL, NULL);
    FUNC4(c->dht->net, NET_PACKET_CRYPTO_DATA, NULL, NULL);
    FUNC6(c, sizeof(Net_Crypto));
    FUNC2(c);
}