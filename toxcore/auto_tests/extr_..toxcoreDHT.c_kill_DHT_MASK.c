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
struct TYPE_5__ {struct TYPE_5__* loaded_nodes_list; struct TYPE_5__* friends_list; int /*<<< orphan*/  ping; int /*<<< orphan*/  dht_harden_ping_array; int /*<<< orphan*/  dht_ping_array; int /*<<< orphan*/  net; int /*<<< orphan*/  assoc; } ;
typedef  TYPE_1__ DHT ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_PACKET_HARDENING ; 
 int /*<<< orphan*/  CRYPTO_PACKET_NAT_PING ; 
 int /*<<< orphan*/  NET_PACKET_GET_NODES ; 
 int /*<<< orphan*/  NET_PACKET_SEND_NODES_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(DHT *dht)
{
#ifdef ENABLE_ASSOC_DHT
    kill_Assoc(dht->assoc);
#endif
    FUNC4(dht->net, NET_PACKET_GET_NODES, NULL, NULL);
    FUNC4(dht->net, NET_PACKET_SEND_NODES_IPV6, NULL, NULL);
    FUNC0(dht, CRYPTO_PACKET_NAT_PING, NULL, NULL);
    FUNC0(dht, CRYPTO_PACKET_HARDENING, NULL, NULL);
    FUNC5(&dht->dht_ping_array);
    FUNC5(&dht->dht_harden_ping_array);
    FUNC3(dht->ping);
    FUNC1(dht->friends_list);
    FUNC1(dht->loaded_nodes_list);
    FUNC1(dht);
}