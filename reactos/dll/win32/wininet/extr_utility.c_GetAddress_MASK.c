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
struct sockaddr_in6 {void* sin6_port; int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {void* sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int ai_family; int ai_addrlen; int /*<<< orphan*/  ai_addr; } ;
typedef  int /*<<< orphan*/  INTERNET_PORT ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  TYPE_1__ ADDRINFOW ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__**) ; 
 int /*<<< orphan*/  INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,void*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

BOOL FUNC9(const WCHAR *name, INTERNET_PORT port, struct sockaddr *psa, int *sa_len, char *addr_str)
{
    ADDRINFOW *res, hints;
    void *addr = NULL;
    int ret;

    FUNC2("%s\n", FUNC4(name));

    FUNC8( &hints, 0, sizeof(hints) );
    /* Prefer IPv4 to IPv6 addresses, since some servers do not listen on
     * their IPv6 addresses even though they have IPv6 addresses in the DNS.
     */
    hints.ai_family = AF_INET;

    ret = FUNC1(name, NULL, &hints, &res);
    if (ret != 0)
    {
        FUNC2("failed to get IPv4 address of %s, retrying with IPv6\n", FUNC4(name));
        hints.ai_family = AF_INET6;
        ret = FUNC1(name, NULL, &hints, &res);
    }
    if (ret != 0)
    {
        FUNC2("failed to get address of %s\n", FUNC4(name));
        return FALSE;
    }
    if (*sa_len < res->ai_addrlen)
    {
        FUNC3("address too small\n");
        FUNC0(res);
        return FALSE;
    }
    *sa_len = res->ai_addrlen;
    FUNC7( psa, res->ai_addr, res->ai_addrlen );
    /* Copy port */
    switch (res->ai_family)
    {
    case AF_INET:
        addr = &((struct sockaddr_in *)psa)->sin_addr;
        ((struct sockaddr_in *)psa)->sin_port = FUNC5(port);
        break;
    case AF_INET6:
        addr = &((struct sockaddr_in6 *)psa)->sin6_addr;
        ((struct sockaddr_in6 *)psa)->sin6_port = FUNC5(port);
        break;
    }

    if(addr_str)
        FUNC6(res->ai_family, addr, addr_str, INET6_ADDRSTRLEN);
    FUNC0(res);
    return TRUE;
}