#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_14__ {scalar_t__ family; } ;
struct TYPE_17__ {TYPE_1__ ip; } ;
struct TYPE_16__ {scalar_t__ status; scalar_t__ dht_pk_lastrecv; scalar_t__ dht_ip_port_lastrecv; int crypt_connection_id; scalar_t__ ping_lastsent; scalar_t__ share_relays_lastsent; scalar_t__ ping_lastrecv; TYPE_4__ dht_ip_port; scalar_t__ dht_lock; int /*<<< orphan*/  dht_temp_pk; } ;
struct TYPE_15__ {scalar_t__ num_cons; int /*<<< orphan*/  net_crypto; int /*<<< orphan*/  dht; } ;
typedef  TYPE_2__ Friend_Connections ;
typedef  TYPE_3__ Friend_Conn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FRIENDCONN_STATUS_CONNECTED ; 
 scalar_t__ FRIENDCONN_STATUS_CONNECTING ; 
 scalar_t__ FRIEND_CONNECTION_TIMEOUT ; 
 scalar_t__ FRIEND_DHT_TIMEOUT ; 
 scalar_t__ FRIEND_PING_INTERVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int MAX_FRIEND_TCP_CONNECTIONS ; 
 scalar_t__ SHARE_RELAYS_INTERVAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__) ; 
 TYPE_3__* FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,TYPE_4__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 

void FUNC11(Friend_Connections *fr_c)
{
    uint32_t i;
    uint64_t temp_time = FUNC10();

    for (i = 0; i < fr_c->num_cons; ++i) {
        Friend_Conn *friend_con = FUNC5(fr_c, i);

        if (friend_con) {
            if (friend_con->status == FRIENDCONN_STATUS_CONNECTING) {
                if (friend_con->dht_pk_lastrecv + FRIEND_DHT_TIMEOUT < temp_time) {
                    if (friend_con->dht_lock) {
                        FUNC0(fr_c->dht, friend_con->dht_temp_pk, friend_con->dht_lock);
                        friend_con->dht_lock = 0;
                    }
                }

                if (friend_con->dht_ip_port_lastrecv + FRIEND_DHT_TIMEOUT < temp_time) {
                    friend_con->dht_ip_port.ip.family = 0;
                }

                if (friend_con->dht_lock) {
                    if (FUNC4(fr_c, i) == 0) {
                        FUNC9(fr_c->net_crypto, friend_con->crypt_connection_id, friend_con->dht_ip_port, 0);
                        FUNC2(fr_c, i, (MAX_FRIEND_TCP_CONNECTIONS / 2)); /* Only fill it half up. */
                    }
                }

            } else if (friend_con->status == FRIENDCONN_STATUS_CONNECTED) {
                if (friend_con->ping_lastsent + FRIEND_PING_INTERVAL < temp_time) {
                    FUNC7(fr_c, i);
                }

                if (friend_con->share_relays_lastsent + SHARE_RELAYS_INTERVAL < temp_time) {
                    FUNC8(fr_c, i);
                }

                if (friend_con->ping_lastrecv + FRIEND_CONNECTION_TIMEOUT < temp_time) {
                    /* If we stopped receiving ping packets, kill it. */
                    FUNC3(fr_c->net_crypto, friend_con->crypt_connection_id);
                    friend_con->crypt_connection_id = -1;
                    FUNC6(fr_c, i, 0); /* Going offline. */
                }
            }
        }
    }

    FUNC1(fr_c);
}