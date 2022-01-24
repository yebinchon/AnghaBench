#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_10__ {size_t num_friends; TYPE_2__* friends_list; } ;
struct TYPE_8__ {scalar_t__ NATping_timestamp; int hole_punching; scalar_t__ punching_timestamp; scalar_t__ recvNATping_timestamp; int /*<<< orphan*/  NATping_id; } ;
struct TYPE_9__ {TYPE_1__ nat; int /*<<< orphan*/  public_key; } ;
typedef  int /*<<< orphan*/  IP_Port ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_3__ DHT ;

/* Variables and functions */
 int MAX_FRIEND_CLIENTS ; 
 int /*<<< orphan*/  NAT_PING_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int PUNCH_INTERVAL ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static void FUNC7(DHT *dht)
{
    uint32_t i;
    uint64_t temp_time = FUNC6();

    for (i = 0; i < dht->num_friends; ++i) {
        IP_Port ip_list[MAX_FRIEND_CLIENTS];
        int num = FUNC2(dht, ip_list, i);

        /* If already connected or friend is not online don't try to hole punch. */
        if (num < MAX_FRIEND_CLIENTS / 2)
            continue;

        if (dht->friends_list[i].nat.NATping_timestamp + PUNCH_INTERVAL < temp_time) {
            FUNC5(dht, dht->friends_list[i].public_key, dht->friends_list[i].nat.NATping_id, NAT_PING_REQUEST);
            dht->friends_list[i].nat.NATping_timestamp = temp_time;
        }

        if (dht->friends_list[i].nat.hole_punching == 1 &&
                dht->friends_list[i].nat.punching_timestamp + PUNCH_INTERVAL < temp_time &&
                dht->friends_list[i].nat.recvNATping_timestamp + PUNCH_INTERVAL * 2 >= temp_time) {

            IP ip = FUNC0(ip_list, num, MAX_FRIEND_CLIENTS / 2);

            if (!FUNC3(&ip))
                continue;

            uint16_t port_list[MAX_FRIEND_CLIENTS];
            uint16_t numports = FUNC1(port_list, ip_list, num, ip);
            FUNC4(dht, ip, port_list, numports, i);

            dht->friends_list[i].nat.punching_timestamp = temp_time;
            dht->friends_list[i].nat.hole_punching = 0;
        }
    }
}