#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  plain ;
struct TYPE_9__ {int num_friends; int /*<<< orphan*/  last_packet_recv; TYPE_2__* friends_list; TYPE_1__* c; } ;
struct TYPE_8__ {scalar_t__ status; int /*<<< orphan*/  temp_secret_key; } ;
struct TYPE_7__ {int /*<<< orphan*/  self_secret_key; } ;
typedef  TYPE_3__ Onion_Client ;
typedef  int /*<<< orphan*/  Node_format ;
typedef  int /*<<< orphan*/  IP_Port ;

/* Variables and functions */
 int MAX_SENT_NODES ; 
 scalar_t__ ONION_ANNOUNCE_RESPONSE_MAX_SIZE ; 
 scalar_t__ ONION_ANNOUNCE_RESPONSE_MIN_SIZE ; 
 int ONION_ANNOUNCE_SENDBACK_DATA_LENGTH ; 
 int ONION_PING_ID_SIZE ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int crypto_box_NONCEBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    Onion_Client *onion_c = object;

    if (length < ONION_ANNOUNCE_RESPONSE_MIN_SIZE || length > ONION_ANNOUNCE_RESPONSE_MAX_SIZE)
        return 1;

    uint16_t len_nodes = length - ONION_ANNOUNCE_RESPONSE_MIN_SIZE;

    uint8_t public_key[crypto_box_PUBLICKEYBYTES];
    IP_Port ip_port;
    uint32_t path_num;
    uint32_t num = FUNC0(onion_c, packet + 1, public_key, &ip_port, &path_num);

    if (num > onion_c->num_friends)
        return 1;

    uint8_t plain[1 + ONION_PING_ID_SIZE + len_nodes];
    int len = -1;

    if (num == 0) {
        len = FUNC3(public_key, onion_c->c->self_secret_key, packet + 1 + ONION_ANNOUNCE_SENDBACK_DATA_LENGTH,
                           packet + 1 + ONION_ANNOUNCE_SENDBACK_DATA_LENGTH + crypto_box_NONCEBYTES,
                           length - (1 + ONION_ANNOUNCE_SENDBACK_DATA_LENGTH + crypto_box_NONCEBYTES), plain);
    } else {
        if (onion_c->friends_list[num - 1].status == 0)
            return 1;

        len = FUNC3(public_key, onion_c->friends_list[num - 1].temp_secret_key,
                           packet + 1 + ONION_ANNOUNCE_SENDBACK_DATA_LENGTH,
                           packet + 1 + ONION_ANNOUNCE_SENDBACK_DATA_LENGTH + crypto_box_NONCEBYTES,
                           length - (1 + ONION_ANNOUNCE_SENDBACK_DATA_LENGTH + crypto_box_NONCEBYTES), plain);
    }

    if ((uint32_t)len != sizeof(plain))
        return 1;

    if (FUNC1(onion_c, num, public_key, ip_port, plain[0], plain + 1, path_num) == -1)
        return 1;

    if (len_nodes != 0) {
        Node_format nodes[MAX_SENT_NODES];
        int num_nodes = FUNC5(nodes, MAX_SENT_NODES, 0, plain + 1 + ONION_PING_ID_SIZE, len_nodes, 0);

        if (num_nodes <= 0)
            return 1;

        if (FUNC2(onion_c, num, nodes, num_nodes, source) == -1)
            return 1;
    }

    //TODO: LAN vs non LAN ips?, if we are connected only to LAN, are we offline?
    onion_c->last_packet_recv = FUNC4();
    return 0;
}