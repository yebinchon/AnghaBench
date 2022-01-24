#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ops; } ;
typedef  TYPE_1__ vlc_tls_t ;
struct addrinfo {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (struct addrinfo const*) ; 
 int /*<<< orphan*/  vlc_tls_socket_fastopen_ops ; 

vlc_tls_t *FUNC3(const struct addrinfo *restrict info,
                                      bool defer_connect)
{
    vlc_tls_t *sock = FUNC2(info);
    if (sock == NULL)
        return NULL;

    if (defer_connect)
    {   /* The socket is not connected yet.
         * The connection will be triggered on the first send. */
        sock->ops = &vlc_tls_socket_fastopen_ops;
    }
    else
    {
        if (FUNC0(sock))
        {
            FUNC1(sock);
            sock = NULL;
        }
    }
    return sock;
}