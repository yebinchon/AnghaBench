#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  sock_t ;
struct TYPE_7__ {int /*<<< orphan*/  sock; } ;
struct TYPE_6__ {scalar_t__ size_accepted_connections; TYPE_3__* accepted_connection_array; } ;
typedef  TYPE_1__ TCP_Server ;

/* Variables and functions */
 scalar_t__ NUM_CLIENT_CONNECTIONS ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(TCP_Server *TCP_server, int index)
{
    if ((uint32_t)index >= TCP_server->size_accepted_connections)
        return -1;

    uint32_t i;

    for (i = 0; i < NUM_CLIENT_CONNECTIONS; ++i) {
        FUNC2(TCP_server, &TCP_server->accepted_connection_array[index], i);
    }

    sock_t sock = TCP_server->accepted_connection_array[index].sock;

    if (FUNC0(TCP_server, index) != 0)
        return -1;

    FUNC1(sock);
    return 0;
}