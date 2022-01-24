#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ family; } ;
struct TYPE_20__ {TYPE_1__ ip; } ;
struct TYPE_19__ {int crypt_connection_id; int /*<<< orphan*/  dht_temp_pk; int /*<<< orphan*/  dht_ip_port_lastrecv; TYPE_5__ dht_ip_port; } ;
struct TYPE_18__ {int /*<<< orphan*/  net_crypto; } ;
struct TYPE_17__ {int /*<<< orphan*/  dht_public_key; TYPE_5__ source; int /*<<< orphan*/  public_key; } ;
typedef  TYPE_2__ New_Connection ;
typedef  TYPE_3__ Friend_Connections ;
typedef  TYPE_4__ Friend_Conn ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  dht_pk_callback ; 
 TYPE_4__* FUNC5 (TYPE_3__*,int) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_lossy_packet ; 
 int /*<<< orphan*/  handle_packet ; 
 int /*<<< orphan*/  handle_status ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,TYPE_5__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(void *object, New_Connection *n_c)
{
    Friend_Connections *fr_c = object;
    int friendcon_id = FUNC6(fr_c, n_c->public_key);
    Friend_Conn *friend_con = FUNC5(fr_c, friendcon_id);

    if (friend_con) {

        if (friend_con->crypt_connection_id != -1)
            return -1;

        int id = FUNC0(fr_c->net_crypto, n_c);

        if (id == -1) {
            return -1;
        }

        FUNC4(fr_c->net_crypto, id, &handle_status, fr_c, friendcon_id);
        FUNC2(fr_c->net_crypto, id, &handle_packet, fr_c, friendcon_id);
        FUNC3(fr_c->net_crypto, id, &handle_lossy_packet, fr_c, friendcon_id);
        friend_con->crypt_connection_id = id;

        if (n_c->source.ip.family != AF_INET && n_c->source.ip.family != AF_INET6) {
            FUNC9(fr_c->net_crypto, friend_con->crypt_connection_id, friend_con->dht_ip_port, 0);
        } else {
            friend_con->dht_ip_port = n_c->source;
            friend_con->dht_ip_port_lastrecv = FUNC10();
        }

        if (FUNC8(friend_con->dht_temp_pk, n_c->dht_public_key) != 0) {
            FUNC1(fr_c, friendcon_id, n_c->dht_public_key);
        }

        FUNC7(fr_c->net_crypto, id, &dht_pk_callback, fr_c, friendcon_id);
        return 0;
    }

    return -1;
}