#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_11__ {scalar_t__ status; int /*<<< orphan*/  kill_at; int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ TCP_Client_Connection ;

/* Variables and functions */
 scalar_t__ TCP_CLIENT_CONFIRMED ; 
 scalar_t__ TCP_CLIENT_CONNECTING ; 
 scalar_t__ TCP_CLIENT_DISCONNECTED ; 
 scalar_t__ TCP_CLIENT_PROXY_HTTP_CONNECTING ; 
 scalar_t__ TCP_CLIENT_PROXY_SOCKS5_CONNECTING ; 
 scalar_t__ TCP_CLIENT_PROXY_SOCKS5_UNCONFIRMED ; 
 scalar_t__ TCP_CLIENT_UNCONFIRMED ; 
 int TCP_SERVER_HANDSHAKE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(TCP_Client_Connection *TCP_connection)
{
    FUNC10();

    if (TCP_connection->status == TCP_CLIENT_DISCONNECTED) {
        return;
    }

    if (TCP_connection->status == TCP_CLIENT_PROXY_HTTP_CONNECTING) {
        if (FUNC7(TCP_connection) == 0) {
            int ret = FUNC3(TCP_connection);

            if (ret == -1) {
                TCP_connection->kill_at = 0;
                TCP_connection->status = TCP_CLIENT_DISCONNECTED;
            }

            if (ret == 1) {
                FUNC1(TCP_connection);
                TCP_connection->status = TCP_CLIENT_CONNECTING;
            }
        }
    }

    if (TCP_connection->status == TCP_CLIENT_PROXY_SOCKS5_CONNECTING) {
        if (FUNC7(TCP_connection) == 0) {
            int ret = FUNC8(TCP_connection);

            if (ret == -1) {
                TCP_connection->kill_at = 0;
                TCP_connection->status = TCP_CLIENT_DISCONNECTED;
            }

            if (ret == 1) {
                FUNC4(TCP_connection);
                TCP_connection->status = TCP_CLIENT_PROXY_SOCKS5_UNCONFIRMED;
            }
        }
    }

    if (TCP_connection->status == TCP_CLIENT_PROXY_SOCKS5_UNCONFIRMED) {
        if (FUNC7(TCP_connection) == 0) {
            int ret = FUNC5(TCP_connection);

            if (ret == -1) {
                TCP_connection->kill_at = 0;
                TCP_connection->status = TCP_CLIENT_DISCONNECTED;
            }

            if (ret == 1) {
                FUNC1(TCP_connection);
                TCP_connection->status = TCP_CLIENT_CONNECTING;
            }
        }
    }

    if (TCP_connection->status == TCP_CLIENT_CONNECTING) {
        if (FUNC7(TCP_connection) == 0) {
            TCP_connection->status = TCP_CLIENT_UNCONFIRMED;
        }
    }

    if (TCP_connection->status == TCP_CLIENT_UNCONFIRMED) {
        uint8_t data[TCP_SERVER_HANDSHAKE_SIZE];
        int len = FUNC6(TCP_connection->sock, data, sizeof(data));

        if (sizeof(data) == len) {
            if (FUNC2(TCP_connection, data) == 0) {
                TCP_connection->kill_at = ~0;
                TCP_connection->status = TCP_CLIENT_CONFIRMED;
            } else {
                TCP_connection->kill_at = 0;
                TCP_connection->status = TCP_CLIENT_DISCONNECTED;
            }
        }
    }

    if (TCP_connection->status == TCP_CLIENT_CONFIRMED) {
        FUNC0(TCP_connection);
    }

    if (TCP_connection->kill_at <= FUNC9()) {
        TCP_connection->status = TCP_CLIENT_DISCONNECTED;
    }
}