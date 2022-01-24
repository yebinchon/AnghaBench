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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  resp_packet ;
struct TYPE_7__ {int /*<<< orphan*/  const* public_key; } ;
struct TYPE_6__ {TYPE_2__* accepted_connection_array; } ;
typedef  TYPE_1__ TCP_Server ;
typedef  TYPE_2__ TCP_Secure_Connection ;

/* Variables and functions */
 scalar_t__ TCP_MAX_OOB_DATA_LENGTH ; 
 int /*<<< orphan*/  TCP_PACKET_OOB_RECV ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(TCP_Server *TCP_server, uint32_t con_id, const uint8_t *public_key, const uint8_t *data,
                               uint16_t length)
{
    if (length == 0 || length > TCP_MAX_OOB_DATA_LENGTH)
        return -1;

    TCP_Secure_Connection *con = &TCP_server->accepted_connection_array[con_id];

    int other_index = FUNC0(TCP_server, public_key);

    if (other_index != -1) {
        uint8_t resp_packet[1 + crypto_box_PUBLICKEYBYTES + length];
        resp_packet[0] = TCP_PACKET_OOB_RECV;
        FUNC1(resp_packet + 1, con->public_key, crypto_box_PUBLICKEYBYTES);
        FUNC1(resp_packet + 1 + crypto_box_PUBLICKEYBYTES, data, length);
        FUNC2(&TCP_server->accepted_connection_array[other_index], resp_packet,
                                           sizeof(resp_packet), 0);
    }

    return 0;
}