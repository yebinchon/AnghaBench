
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int crypt_connection_id; } ;
struct TYPE_6__ {int net_crypto; } ;
typedef int IP_Port ;
typedef TYPE_1__ Friend_Connections ;
typedef TYPE_2__ Friend_Conn ;


 int add_tcp_relay (int ,int ,int const*) ;
 int friend_add_tcp_relay (TYPE_1__*,int ,int ,int const*) ;
 TYPE_2__* get_conn (TYPE_1__*,int ) ;

__attribute__((used)) static int tcp_relay_node_callback(void *object, uint32_t number, IP_Port ip_port, const uint8_t *public_key)
{
    Friend_Connections *fr_c = object;
    Friend_Conn *friend_con = get_conn(fr_c, number);

    if (!friend_con)
        return -1;

    if (friend_con->crypt_connection_id != -1) {
        return friend_add_tcp_relay(fr_c, number, ip_port, public_key);
    } else {
        return add_tcp_relay(fr_c->net_crypto, ip_port, public_key);
    }
}
