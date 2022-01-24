#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_5__ {size_t num_listening_socks; struct TYPE_5__* accepted_connection_array; struct TYPE_5__* socks_listening; int /*<<< orphan*/  efd; int /*<<< orphan*/  accepted_key_list; scalar_t__ onion; } ;
typedef  TYPE_1__ TCP_Server ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(TCP_Server *TCP_server)
{
    uint32_t i;

    for (i = 0; i < TCP_server->num_listening_socks; ++i) {
        FUNC3(TCP_server->socks_listening[i]);
    }

    if (TCP_server->onion) {
        FUNC4(TCP_server->onion, NULL, NULL);
    }

    FUNC0(&TCP_server->accepted_key_list);

#ifdef TCP_SERVER_USE_EPOLL
    close(TCP_server->efd);
#endif

    FUNC2(TCP_server->socks_listening);
    FUNC2(TCP_server->accepted_connection_array);
    FUNC2(TCP_server);
}