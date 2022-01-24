#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  packet ;
struct TYPE_7__ {void* status; int /*<<< orphan*/  recv_nonce; int /*<<< orphan*/  shared_key; int /*<<< orphan*/  next_packet_length; int /*<<< orphan*/  sock; int /*<<< orphan*/  last_pinged; scalar_t__ ping_id; scalar_t__ ping_request_id; } ;
typedef  TYPE_1__ TCP_Client_Connection ;

/* Variables and functions */
 int MAX_PACKET_SIZE ; 
 void* TCP_CLIENT_DISCONNECTED ; 
 int /*<<< orphan*/  TCP_PING_FREQUENCY ; 
 int /*<<< orphan*/  TCP_PING_TIMEOUT ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(TCP_Client_Connection *conn)
{
    FUNC4(conn);
    FUNC6(conn);
    FUNC5(conn);

    uint8_t packet[MAX_PACKET_SIZE];
    int len;

    if (FUNC1(conn->last_pinged, TCP_PING_FREQUENCY)) {
        uint64_t ping_id = FUNC2();

        if (!ping_id)
            ++ping_id;

        conn->ping_request_id = conn->ping_id = ping_id;
        FUNC5(conn);
        conn->last_pinged = FUNC7();
    }

    if (conn->ping_id && FUNC1(conn->last_pinged, TCP_PING_TIMEOUT)) {
        conn->status = TCP_CLIENT_DISCONNECTED;
        return 0;
    }

    while ((len = FUNC3(conn->sock, &conn->next_packet_length, conn->shared_key,
                  conn->recv_nonce, packet, sizeof(packet)))) {
        if (len == -1) {
            conn->status = TCP_CLIENT_DISCONNECTED;
            break;
        }

        if (FUNC0(conn, packet, len) == -1) {
            conn->status = TCP_CLIENT_DISCONNECTED;
            break;
        }
    }

    return 0;
}