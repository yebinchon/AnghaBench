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
typedef  scalar_t__ t_socket ;
struct addrinfo {scalar_t__ ai_addrlen; scalar_t__ ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  scalar_t__* p_socket ;
typedef  int /*<<< orphan*/  SA ;

/* Variables and functions */
 scalar_t__ SOCKET_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

const char *FUNC8(p_socket ps, const char *address, const char *serv,
        struct addrinfo *bindhints)
{
    struct addrinfo *iterator = NULL, *resolved = NULL;
    const char *err = NULL;
    t_socket sock = *ps;
    /* translate luasocket special values to C */
    if (FUNC7(address, "*") == 0) address = NULL;
    if (!serv) serv = "0";
    /* try resolving */
    err = FUNC5(FUNC1(address, serv, bindhints, &resolved));
    if (err) {
        if (resolved) FUNC0(resolved);
        return err;
    }
    /* iterate over resolved addresses until one is good */
    for (iterator = resolved; iterator; iterator = iterator->ai_next) {
        if(sock == SOCKET_INVALID) {
            err = FUNC6(FUNC3(&sock, iterator->ai_family,
                        iterator->ai_socktype, iterator->ai_protocol));
            if(err)
                continue;
        }
        /* try binding to local address */
        err = FUNC6(FUNC2(&sock,
            (SA *) iterator->ai_addr,
            (socklen_t) iterator->ai_addrlen));

        /* keep trying unless bind succeeded */
        if (err) {
            if(sock != *ps)
                FUNC4(&sock);
        } else {
            /* remember what we connected to, particularly the family */
            *bindhints = *iterator;
            break;
        }
    }
    /* cleanup and return error */
    FUNC0(resolved);
    *ps = sock;
    return err;
}