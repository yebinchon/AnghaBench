#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  random_key_bytes ;
struct TYPE_10__ {int /*<<< orphan*/  self_public_key; int /*<<< orphan*/  assoc; int /*<<< orphan*/  dht_harden_ping_array; int /*<<< orphan*/  dht_ping_array; int /*<<< orphan*/  self_secret_key; int /*<<< orphan*/  secret_symmetric_key; int /*<<< orphan*/ * net; int /*<<< orphan*/ * ping; } ;
typedef  int /*<<< orphan*/  Networking_Core ;
typedef  TYPE_1__ DHT ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_PACKET_HARDENING ; 
 int /*<<< orphan*/  CRYPTO_PACKET_NAT_PING ; 
 scalar_t__ DHT_FAKE_FRIEND_NUMBER ; 
 int /*<<< orphan*/  DHT_PING_ARRAY_SIZE ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NET_PACKET_CRYPTO ; 
 int /*<<< orphan*/  NET_PACKET_GET_NODES ; 
 int /*<<< orphan*/  NET_PACKET_SEND_NODES_IPV6 ; 
 int /*<<< orphan*/  PING_TIMEOUT ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cryptopacket_handle ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  handle_NATping ; 
 int /*<<< orphan*/  handle_getnodes ; 
 int /*<<< orphan*/  handle_hardening ; 
 int /*<<< orphan*/  handle_sendnodes_ipv6 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

DHT *FUNC12(Networking_Core *net)
{
    /* init time */
    FUNC11();

    if (net == NULL)
        return NULL;

    DHT *dht = FUNC1(1, sizeof(DHT));

    if (dht == NULL)
        return NULL;

    dht->net = net;
    dht->ping = FUNC7(dht);

    if (dht->ping == NULL) {
        FUNC4(dht);
        return NULL;
    }

    FUNC5(dht->net, NET_PACKET_GET_NODES, &handle_getnodes, dht);
    FUNC5(dht->net, NET_PACKET_SEND_NODES_IPV6, &handle_sendnodes_ipv6, dht);
    FUNC5(dht->net, NET_PACKET_CRYPTO, &cryptopacket_handle, dht);
    FUNC3(dht, CRYPTO_PACKET_NAT_PING, &handle_NATping, dht);
    FUNC3(dht, CRYPTO_PACKET_HARDENING, &handle_hardening, dht);

    FUNC8(dht->secret_symmetric_key);
    FUNC2(dht->self_public_key, dht->self_secret_key);

    FUNC9(&dht->dht_ping_array, DHT_PING_ARRAY_SIZE, PING_TIMEOUT);
    FUNC9(&dht->dht_harden_ping_array, DHT_PING_ARRAY_SIZE, PING_TIMEOUT);
#ifdef ENABLE_ASSOC_DHT
    dht->assoc = new_Assoc_default(dht->self_public_key);
#endif
    uint32_t i;

    for (i = 0; i < DHT_FAKE_FRIEND_NUMBER; ++i) {
        uint8_t random_key_bytes[crypto_box_PUBLICKEYBYTES];
        FUNC10(random_key_bytes, sizeof(random_key_bytes));

        if (FUNC0(dht, random_key_bytes, 0, 0, 0, 0) != 0) {
            FUNC4(dht);
            return NULL;
        }
    }

    return dht;
}