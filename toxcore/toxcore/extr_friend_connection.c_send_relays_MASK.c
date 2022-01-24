#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_12__ {int /*<<< orphan*/  share_relays_lastsent; int /*<<< orphan*/  crypt_connection_id; } ;
struct TYPE_11__ {int /*<<< orphan*/  net_crypto; } ;
struct TYPE_10__ {int /*<<< orphan*/  public_key; int /*<<< orphan*/  ip_port; } ;
typedef  TYPE_1__ Node_format ;
typedef  TYPE_2__ Friend_Connections ;
typedef  TYPE_3__ Friend_Conn ;

/* Variables and functions */
 int MAX_SHARED_RELAYS ; 
 int /*<<< orphan*/  PACKET_ID_SHARE_RELAYS ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC6(Friend_Connections *fr_c, int friendcon_id)
{
    Friend_Conn *friend_con = FUNC2(fr_c, friendcon_id);

    if (!friend_con)
        return 0;

    Node_format nodes[MAX_SHARED_RELAYS];
    uint8_t data[1024];
    int n, length;

    n = FUNC0(fr_c->net_crypto, nodes, MAX_SHARED_RELAYS);

    int i;

    for (i = 0; i < n; ++i) {
        /* Associated the relays being sent with this connection.
           On receiving the peer will do the same which will establish the connection. */
        FUNC1(fr_c, friendcon_id, nodes[i].ip_port, nodes[i].public_key);
    }

    length = FUNC3(data + 1, sizeof(data) - 1, nodes, n);

    if (length <= 0)
        return 0;

    data[0] = PACKET_ID_SHARE_RELAYS;
    ++length;

    if (FUNC5(fr_c->net_crypto, friend_con->crypt_connection_id, data, length, 0) != -1) {
        friend_con->share_relays_lastsent = FUNC4();
        return 1;
    }

    return 0;
}