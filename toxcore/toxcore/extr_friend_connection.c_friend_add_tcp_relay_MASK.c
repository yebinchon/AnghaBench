#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint16_t ;
struct TYPE_12__ {scalar_t__ family; } ;
struct TYPE_14__ {TYPE_11__ ip; } ;
struct TYPE_17__ {int /*<<< orphan*/  public_key; TYPE_2__ ip_port; } ;
struct TYPE_13__ {TYPE_11__ ip; } ;
struct TYPE_16__ {unsigned int tcp_relay_counter; int /*<<< orphan*/  crypt_connection_id; TYPE_5__* tcp_relays; scalar_t__ hosting_tcp_relay; TYPE_1__ dht_ip_port; int /*<<< orphan*/  dht_temp_pk; } ;
struct TYPE_15__ {int /*<<< orphan*/  net_crypto; } ;
typedef  int /*<<< orphan*/  Node_format ;
typedef  TYPE_2__ IP_Port ;
typedef  TYPE_3__ Friend_Connections ;
typedef  TYPE_4__ Friend_Conn ;

/* Variables and functions */
 unsigned int FRIEND_MAX_STORED_TCP_RELAYS ; 
 scalar_t__ FUNC0 (TYPE_11__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  crypto_box_PUBLICKEYBYTES ; 
 TYPE_4__* FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

int FUNC6(Friend_Connections *fr_c, int friendcon_id, IP_Port ip_port, const uint8_t *public_key)
{
    Friend_Conn *friend_con = FUNC2(fr_c, friendcon_id);

    if (!friend_con)
        return -1;

    /* Local ip and same pk means that they are hosting a TCP relay. */
    if (FUNC0(ip_port.ip) && FUNC5(friend_con->dht_temp_pk, public_key) == 0) {
        if (friend_con->dht_ip_port.ip.family != 0) {
            ip_port.ip = friend_con->dht_ip_port.ip;
        } else {
            friend_con->hosting_tcp_relay = 0;
        }
    }

    unsigned int i;

    uint16_t index = friend_con->tcp_relay_counter % FRIEND_MAX_STORED_TCP_RELAYS;

    for (i = 0; i < FRIEND_MAX_STORED_TCP_RELAYS; ++i) {
        if (friend_con->tcp_relays[i].ip_port.ip.family != 0
                && FUNC5(friend_con->tcp_relays[i].public_key, public_key) == 0) {
            FUNC4(&friend_con->tcp_relays[i], 0, sizeof(Node_format));
        }
    }

    friend_con->tcp_relays[index].ip_port = ip_port;
    FUNC3(friend_con->tcp_relays[index].public_key, public_key, crypto_box_PUBLICKEYBYTES);
    ++friend_con->tcp_relay_counter;

    return FUNC1(fr_c->net_crypto, friend_con->crypt_connection_id, ip_port, public_key);
}