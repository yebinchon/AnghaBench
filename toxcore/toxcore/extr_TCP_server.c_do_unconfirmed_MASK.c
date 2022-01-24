#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  packet ;
struct TYPE_8__ {scalar_t__ status; int /*<<< orphan*/  recv_nonce; int /*<<< orphan*/  shared_key; int /*<<< orphan*/  next_packet_length; int /*<<< orphan*/  sock; } ;
struct TYPE_7__ {TYPE_2__* unconfirmed_connection_queue; } ;
typedef  TYPE_1__ TCP_Server ;
typedef  TYPE_2__ TCP_Secure_Connection ;

/* Variables and functions */
 int MAX_PACKET_SIZE ; 
 scalar_t__ TCP_STATUS_UNCONFIRMED ; 
 int FUNC0 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(TCP_Server *TCP_server, uint32_t i)
{
    TCP_Secure_Connection *conn = &TCP_server->unconfirmed_connection_queue[i];

    if (conn->status != TCP_STATUS_UNCONFIRMED)
        return -1;

    uint8_t packet[MAX_PACKET_SIZE];
    int len = FUNC2(conn->sock, &conn->next_packet_length, conn->shared_key, conn->recv_nonce,
              packet, sizeof(packet));

    if (len == 0) {
        return -1;
    } else if (len == -1) {
        FUNC1(conn);
        return -1;
    } else {
        return FUNC0(TCP_server, conn, packet, len);
    }
}