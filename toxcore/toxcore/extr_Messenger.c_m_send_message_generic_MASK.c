#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int int64_t ;
typedef  size_t int32_t ;
struct TYPE_7__ {TYPE_1__* friendlist; int /*<<< orphan*/  fr_c; int /*<<< orphan*/  net_crypto; } ;
struct TYPE_6__ {scalar_t__ status; scalar_t__ message_id; int /*<<< orphan*/  friendcon_id; } ;
typedef  TYPE_2__ Messenger ;

/* Variables and functions */
 scalar_t__ FRIEND_ONLINE ; 
 scalar_t__ MAX_CRYPTO_DATA_SIZE ; 
 scalar_t__ MESSAGE_ACTION ; 
 scalar_t__ PACKET_ID_MESSAGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__ const*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC5(Messenger *m, int32_t friendnumber, uint8_t type, const uint8_t *message, uint32_t length,
                           uint32_t *message_id)
{
    if (type > MESSAGE_ACTION)
        return -5;

    if (FUNC2(m, friendnumber))
        return -1;

    if (length >= MAX_CRYPTO_DATA_SIZE)
        return -2;

    if (m->friendlist[friendnumber].status != FRIEND_ONLINE)
        return -3;

    uint8_t packet[length + 1];
    packet[0] = type + PACKET_ID_MESSAGE;

    if (length != 0)
        FUNC3(packet + 1, message, length);

    int64_t packet_num = FUNC4(m->net_crypto, FUNC1(m->fr_c,
                                           m->friendlist[friendnumber].friendcon_id), packet, length + 1, 0);

    if (packet_num == -1)
        return -4;

    uint32_t msg_id = ++m->friendlist[friendnumber].message_id;

    FUNC0(m, friendnumber, packet_num, msg_id);

    if (message_id)
        *message_id = msg_id;

    return 0;
}