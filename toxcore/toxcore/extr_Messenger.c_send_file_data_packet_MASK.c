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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  packet ;
typedef  int int64_t ;
typedef  size_t int32_t ;
struct TYPE_6__ {TYPE_1__* friendlist; int /*<<< orphan*/  fr_c; int /*<<< orphan*/  net_crypto; } ;
struct TYPE_5__ {int /*<<< orphan*/  friendcon_id; } ;
typedef  TYPE_2__ Messenger ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET_ID_FILE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int64_t FUNC4(const Messenger *m, int32_t friendnumber, uint8_t filenumber, const uint8_t *data,
                                     uint16_t length)
{
    if (FUNC1(m, friendnumber))
        return -1;

    uint8_t packet[2 + length];
    packet[0] = PACKET_ID_FILE_DATA;
    packet[1] = filenumber;

    if (length) {
        FUNC2(packet + 2, data, length);
    }

    return FUNC3(m->net_crypto, FUNC0(m->fr_c,
                             m->friendlist[friendnumber].friendcon_id), packet, sizeof(packet), 1);
}