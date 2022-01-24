#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

evutil_socket_t
FUNC2 (evutil_socket_t b, struct sockaddr_storage *cliaddr, 
                  socklen_t *len, int nonblock)
{
    evutil_socket_t s;
    /* int nodelay = 1; */
    
    s = FUNC0 (b, (struct sockaddr *)cliaddr, len);

    /* setsockopt (s, IPPROTO_TCP, TCP_NODELAY, &nodelay, sizeof(nodelay)); */
    if (nonblock)
        FUNC1(s);

    return s;
}