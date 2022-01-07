
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
struct TYPE_8__ {TYPE_2__* friends_list; } ;
struct TYPE_6__ {scalar_t__ NATping_id; int hole_punching; int recvNATping_timestamp; } ;
struct TYPE_7__ {TYPE_1__ nat; } ;
typedef int IP_Port ;
typedef TYPE_2__ DHT_Friend ;
typedef TYPE_3__ DHT ;


 scalar_t__ const NAT_PING_REQUEST ;
 scalar_t__ const NAT_PING_RESPONSE ;
 int friend_number (TYPE_3__*,scalar_t__ const*) ;
 int memcpy (scalar_t__*,scalar_t__ const*,int) ;
 scalar_t__ random_64b () ;
 int send_NATping (TYPE_3__*,scalar_t__ const*,scalar_t__,scalar_t__ const) ;
 int unix_time () ;

__attribute__((used)) static int handle_NATping(void *object, IP_Port source, const uint8_t *source_pubkey, const uint8_t *packet,
                          uint16_t length)
{
    if (length != sizeof(uint64_t) + 1)
        return 1;

    DHT *dht = object;
    uint64_t ping_id;
    memcpy(&ping_id, packet + 1, sizeof(uint64_t));

    int friendnumber = friend_number(dht, source_pubkey);

    if (friendnumber == -1)
        return 1;

    DHT_Friend *friend = &dht->friends_list[friendnumber];

    if (packet[0] == NAT_PING_REQUEST) {

        send_NATping(dht, source_pubkey, ping_id, NAT_PING_RESPONSE);
        friend->nat.recvNATping_timestamp = unix_time();
        return 0;
    } else if (packet[0] == NAT_PING_RESPONSE) {
        if (friend->nat.NATping_id == ping_id) {
            friend->nat.NATping_id = random_64b();
            friend->nat.hole_punching = 1;
            return 0;
        }
    }

    return 1;
}
