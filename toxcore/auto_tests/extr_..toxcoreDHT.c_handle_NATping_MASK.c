#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint16_t ;
struct TYPE_8__ {TYPE_2__* friends_list; } ;
struct TYPE_6__ {scalar_t__ NATping_id; int hole_punching; int /*<<< orphan*/  recvNATping_timestamp; } ;
struct TYPE_7__ {TYPE_1__ nat; } ;
typedef  int /*<<< orphan*/  IP_Port ;
typedef  TYPE_2__ DHT_Friend ;
typedef  TYPE_3__ DHT ;

/* Variables and functions */
 scalar_t__ const NAT_PING_REQUEST ; 
 scalar_t__ const NAT_PING_RESPONSE ; 
 int FUNC0 (TYPE_3__*,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__ const*,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__ const*,scalar_t__,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(void *object, IP_Port source, const uint8_t *source_pubkey, const uint8_t *packet,
                          uint16_t length)
{
    if (length != sizeof(uint64_t) + 1)
        return 1;

    DHT *dht = object;
    uint64_t ping_id;
    FUNC1(&ping_id, packet + 1, sizeof(uint64_t));

    int friendnumber = FUNC0(dht, source_pubkey);

    if (friendnumber == -1)
        return 1;

    DHT_Friend *friend = &dht->friends_list[friendnumber];

    if (packet[0] == NAT_PING_REQUEST) {
        /* 1 is reply */
        FUNC3(dht, source_pubkey, ping_id, NAT_PING_RESPONSE);
        friend->nat.recvNATping_timestamp = FUNC4();
        return 0;
    } else if (packet[0] == NAT_PING_RESPONSE) {
        if (friend->nat.NATping_id == ping_id) {
            friend->nat.NATping_id = FUNC2();
            friend->nat.hole_punching = 1;
            return 0;
        }
    }

    return 1;
}