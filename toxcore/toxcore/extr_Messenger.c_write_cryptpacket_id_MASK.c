#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  size_t int32_t ;
struct TYPE_6__ {TYPE_1__* friendlist; int /*<<< orphan*/  fr_c; int /*<<< orphan*/  net_crypto; } ;
struct TYPE_5__ {scalar_t__ status; int /*<<< orphan*/  friendcon_id; } ;
typedef  TYPE_2__ Messenger ;

/* Variables and functions */
 scalar_t__ FRIEND_ONLINE ; 
 scalar_t__ MAX_CRYPTO_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const Messenger *m, int32_t friendnumber, uint8_t packet_id, const uint8_t *data,
                                uint32_t length, uint8_t congestion_control)
{
    if (FUNC1(m, friendnumber))
        return 0;

    if (length >= MAX_CRYPTO_DATA_SIZE || m->friendlist[friendnumber].status != FRIEND_ONLINE)
        return 0;

    uint8_t packet[length + 1];
    packet[0] = packet_id;

    if (length != 0)
        FUNC2(packet + 1, data, length);

    return FUNC3(m->net_crypto, FUNC0(m->fr_c,
                             m->friendlist[friendnumber].friendcon_id), packet, length + 1, congestion_control) != -1;
}