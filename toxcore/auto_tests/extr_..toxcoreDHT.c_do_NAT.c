
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
struct TYPE_10__ {size_t num_friends; TYPE_2__* friends_list; } ;
struct TYPE_8__ {scalar_t__ NATping_timestamp; int hole_punching; scalar_t__ punching_timestamp; scalar_t__ recvNATping_timestamp; int NATping_id; } ;
struct TYPE_9__ {TYPE_1__ nat; int public_key; } ;
typedef int IP_Port ;
typedef int IP ;
typedef TYPE_3__ DHT ;


 int MAX_FRIEND_CLIENTS ;
 int NAT_PING_REQUEST ;
 int NAT_commonip (int *,int,int) ;
 int NAT_getports (int *,int *,int,int ) ;
 int PUNCH_INTERVAL ;
 int friend_iplist (TYPE_3__*,int *,size_t) ;
 int ip_isset (int *) ;
 int punch_holes (TYPE_3__*,int ,int *,int ,size_t) ;
 int send_NATping (TYPE_3__*,int ,int ,int ) ;
 scalar_t__ unix_time () ;

__attribute__((used)) static void do_NAT(DHT *dht)
{
    uint32_t i;
    uint64_t temp_time = unix_time();

    for (i = 0; i < dht->num_friends; ++i) {
        IP_Port ip_list[MAX_FRIEND_CLIENTS];
        int num = friend_iplist(dht, ip_list, i);


        if (num < MAX_FRIEND_CLIENTS / 2)
            continue;

        if (dht->friends_list[i].nat.NATping_timestamp + PUNCH_INTERVAL < temp_time) {
            send_NATping(dht, dht->friends_list[i].public_key, dht->friends_list[i].nat.NATping_id, NAT_PING_REQUEST);
            dht->friends_list[i].nat.NATping_timestamp = temp_time;
        }

        if (dht->friends_list[i].nat.hole_punching == 1 &&
                dht->friends_list[i].nat.punching_timestamp + PUNCH_INTERVAL < temp_time &&
                dht->friends_list[i].nat.recvNATping_timestamp + PUNCH_INTERVAL * 2 >= temp_time) {

            IP ip = NAT_commonip(ip_list, num, MAX_FRIEND_CLIENTS / 2);

            if (!ip_isset(&ip))
                continue;

            uint16_t port_list[MAX_FRIEND_CLIENTS];
            uint16_t numports = NAT_getports(port_list, ip_list, num, ip);
            punch_holes(dht, ip, port_list, numports, i);

            dht->friends_list[i].nat.punching_timestamp = temp_time;
            dht->friends_list[i].nat.hole_punching = 0;
        }
    }
}
