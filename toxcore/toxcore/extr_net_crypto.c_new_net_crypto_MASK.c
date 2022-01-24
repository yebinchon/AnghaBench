#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  net; int /*<<< orphan*/  self_secret_key; } ;
struct TYPE_11__ {int /*<<< orphan*/  ip_port_list; int /*<<< orphan*/  current_sleep_time; int /*<<< orphan*/  secret_symmetric_key; TYPE_2__* dht; int /*<<< orphan*/ * tcp_c; int /*<<< orphan*/  connections_mutex; int /*<<< orphan*/  tcp_mutex; } ;
typedef  int /*<<< orphan*/  TCP_Proxy_Info ;
typedef  TYPE_1__ Net_Crypto ;
typedef  int /*<<< orphan*/  IP_Port ;
typedef  TYPE_2__ DHT ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_SEND_PACKET_INTERVAL ; 
 int /*<<< orphan*/  NET_PACKET_COOKIE_REQUEST ; 
 int /*<<< orphan*/  NET_PACKET_COOKIE_RESPONSE ; 
 int /*<<< orphan*/  NET_PACKET_CRYPTO_DATA ; 
 int /*<<< orphan*/  NET_PACKET_CRYPTO_HS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  tcp_data_callback ; 
 int /*<<< orphan*/  tcp_oob_callback ; 
 int /*<<< orphan*/  udp_handle_cookie_request ; 
 int /*<<< orphan*/  udp_handle_packet ; 
 int /*<<< orphan*/  FUNC12 () ; 

Net_Crypto *FUNC13(DHT *dht, TCP_Proxy_Info *proxy_info)
{
    FUNC12();

    if (dht == NULL)
        return NULL;

    Net_Crypto *temp = FUNC1(1, sizeof(Net_Crypto));

    if (temp == NULL)
        return NULL;

    temp->tcp_c = FUNC8(dht->self_secret_key, proxy_info);

    if (temp->tcp_c == NULL) {
        FUNC3(temp);
        return NULL;
    }

    FUNC11(temp->tcp_c, &tcp_data_callback, temp);
    FUNC10(temp->tcp_c, &tcp_oob_callback, temp);

    if (FUNC2(&temp->tcp_mutex) != 0 ||
            FUNC9(&temp->connections_mutex, NULL) != 0) {
        FUNC4(temp->tcp_c);
        FUNC3(temp);
        return NULL;
    }

    temp->dht = dht;

    FUNC6(temp);
    FUNC7(temp->secret_symmetric_key);

    temp->current_sleep_time = CRYPTO_SEND_PACKET_INTERVAL;

    FUNC5(dht->net, NET_PACKET_COOKIE_REQUEST, &udp_handle_cookie_request, temp);
    FUNC5(dht->net, NET_PACKET_COOKIE_RESPONSE, &udp_handle_packet, temp);
    FUNC5(dht->net, NET_PACKET_CRYPTO_HS, &udp_handle_packet, temp);
    FUNC5(dht->net, NET_PACKET_CRYPTO_DATA, &udp_handle_packet, temp);

    FUNC0(&temp->ip_port_list, sizeof(IP_Port), 8);

    return temp;
}