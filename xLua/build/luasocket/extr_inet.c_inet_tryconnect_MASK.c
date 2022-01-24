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
struct addrinfo {int ai_family; scalar_t__ ai_addrlen; scalar_t__ ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  p_timeout ;
typedef  int /*<<< orphan*/  p_socket ;
typedef  int /*<<< orphan*/  SA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

const char *FUNC9(p_socket ps, int *family, const char *address,
        const char *serv, p_timeout tm, struct addrinfo *connecthints)
{
    struct addrinfo *iterator = NULL, *resolved = NULL;
    const char *err = NULL;
    /* try resolving */
    err = FUNC5(FUNC1(address, serv,
                connecthints, &resolved));
    if (err != NULL) {
        if (resolved) FUNC0(resolved);
        return err;
    }
    for (iterator = resolved; iterator; iterator = iterator->ai_next) {
        FUNC8(tm);
        /* create new socket if necessary. if there was no
         * bind, we need to create one for every new family
         * that shows up while iterating. if there was a
         * bind, all families will be the same and we will
         * not enter this branch. */
        if (*family != iterator->ai_family) {
            FUNC4(ps);
            err = FUNC7(FUNC3(ps, iterator->ai_family, 
                iterator->ai_socktype, iterator->ai_protocol));
            if (err != NULL) {
                FUNC0(resolved);
                return err;
            }
            *family = iterator->ai_family;
            /* all sockets initially non-blocking */
            FUNC6(ps);
        }
        /* try connecting to remote address */
        err = FUNC7(FUNC2(ps, (SA *) iterator->ai_addr, 
            (socklen_t) iterator->ai_addrlen, tm));
        /* if success, break out of loop */
        if (err == NULL) break;
    }
    FUNC0(resolved);
    /* here, if err is set, we failed */
    return err;
}