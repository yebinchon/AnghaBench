
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int data ;
struct TYPE_12__ {int share_relays_lastsent; int crypt_connection_id; } ;
struct TYPE_11__ {int net_crypto; } ;
struct TYPE_10__ {int public_key; int ip_port; } ;
typedef TYPE_1__ Node_format ;
typedef TYPE_2__ Friend_Connections ;
typedef TYPE_3__ Friend_Conn ;


 int MAX_SHARED_RELAYS ;
 int PACKET_ID_SHARE_RELAYS ;
 int copy_connected_tcp_relays (int ,TYPE_1__*,int) ;
 int friend_add_tcp_relay (TYPE_2__*,int,int ,int ) ;
 TYPE_3__* get_conn (TYPE_2__*,int) ;
 int pack_nodes (int *,int,TYPE_1__*,int) ;
 int unix_time () ;
 int write_cryptpacket (int ,int ,int *,int,int ) ;

__attribute__((used)) static unsigned int send_relays(Friend_Connections *fr_c, int friendcon_id)
{
    Friend_Conn *friend_con = get_conn(fr_c, friendcon_id);

    if (!friend_con)
        return 0;

    Node_format nodes[MAX_SHARED_RELAYS];
    uint8_t data[1024];
    int n, length;

    n = copy_connected_tcp_relays(fr_c->net_crypto, nodes, MAX_SHARED_RELAYS);

    int i;

    for (i = 0; i < n; ++i) {


        friend_add_tcp_relay(fr_c, friendcon_id, nodes[i].ip_port, nodes[i].public_key);
    }

    length = pack_nodes(data + 1, sizeof(data) - 1, nodes, n);

    if (length <= 0)
        return 0;

    data[0] = PACKET_ID_SHARE_RELAYS;
    ++length;

    if (write_cryptpacket(fr_c->net_crypto, friend_con->crypt_connection_id, data, length, 0) != -1) {
        friend_con->share_relays_lastsent = unix_time();
        return 1;
    }

    return 0;
}
