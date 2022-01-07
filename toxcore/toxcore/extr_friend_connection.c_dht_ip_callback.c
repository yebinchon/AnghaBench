
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_8__ {int crypt_connection_id; scalar_t__ hosting_tcp_relay; int dht_temp_pk; int dht_ip_port_lastrecv; int dht_ip_port; } ;
struct TYPE_7__ {int net_crypto; } ;
typedef int IP_Port ;
typedef TYPE_1__ Friend_Connections ;
typedef TYPE_2__ Friend_Conn ;


 int friend_add_tcp_relay (TYPE_1__*,int ,int ,int ) ;
 int friend_new_connection (TYPE_1__*,int ) ;
 TYPE_2__* get_conn (TYPE_1__*,int ) ;
 int set_direct_ip_port (int ,int,int ,int) ;
 int unix_time () ;

__attribute__((used)) static void dht_ip_callback(void *object, int32_t number, IP_Port ip_port)
{
    Friend_Connections *fr_c = object;
    Friend_Conn *friend_con = get_conn(fr_c, number);

    if (!friend_con)
        return;

    if (friend_con->crypt_connection_id == -1) {
        friend_new_connection(fr_c, number);
    }

    set_direct_ip_port(fr_c->net_crypto, friend_con->crypt_connection_id, ip_port, 1);
    friend_con->dht_ip_port = ip_port;
    friend_con->dht_ip_port_lastrecv = unix_time();

    if (friend_con->hosting_tcp_relay) {
        friend_add_tcp_relay(fr_c, number, ip_port, friend_con->dht_temp_pk);
        friend_con->hosting_tcp_relay = 0;
    }
}
