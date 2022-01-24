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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_8__ {int /*<<< orphan*/  connection_number_tcp; } ;
struct TYPE_7__ {int /*<<< orphan*/  tcp_mutex; } ;
typedef  TYPE_1__ Net_Crypto ;
typedef  TYPE_2__ Crypto_Connection ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_CRYPTO_PACKET_SIZE ; 
 scalar_t__ const NET_PACKET_COOKIE_REQUEST ; 
 TYPE_2__* FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int,scalar_t__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__ const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void *object, int id, const uint8_t *data, uint16_t length)
{
    if (length == 0 || length > MAX_CRYPTO_PACKET_SIZE)
        return -1;

    Net_Crypto *c = object;

    Crypto_Connection *conn = FUNC0(c, id);

    if (conn == 0)
        return -1;

    if (data[0] == NET_PACKET_COOKIE_REQUEST) {
        return FUNC4(c, conn->connection_number_tcp, data, length);
    }

    FUNC3(&c->tcp_mutex);
    int ret = FUNC1(c, id, data, length, 0);
    FUNC2(&c->tcp_mutex);

    if (ret != 0)
        return -1;

    //TODO detect and kill bad TCP connections.
    return 0;
}