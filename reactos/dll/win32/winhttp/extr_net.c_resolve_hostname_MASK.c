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
struct sockaddr_storage {int ai_family; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; } ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; int /*<<< orphan*/  sin_family; struct sockaddr_storage sin_addr; } ;
struct hostent {int /*<<< orphan*/  h_addrtype; int /*<<< orphan*/  h_length; int /*<<< orphan*/  h_addr; } ;
struct addrinfo {int ai_family; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  INTERNET_PORT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  ERROR_WINHTTP_NAME_NOT_RESOLVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cs_gethostbyname ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_storage*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *,struct sockaddr_storage*,struct sockaddr_storage**) ; 
 struct hostent* FUNC7 (char*) ; 
 int /*<<< orphan*/  h_errno ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sockaddr_storage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 char* FUNC12 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static DWORD FUNC13( const WCHAR *hostnameW, INTERNET_PORT port, struct sockaddr_storage *sa )
{
    char *hostname;
#ifdef HAVE_GETADDRINFO
    struct addrinfo *res, hints;
    int ret;
#else
    struct hostent *he;
    struct sockaddr_in *sin = (struct sockaddr_in *)sa;
#endif

    if (!(hostname = FUNC12( hostnameW ))) return ERROR_OUTOFMEMORY;

#ifdef HAVE_GETADDRINFO
    memset( &hints, 0, sizeof(struct addrinfo) );
    /* Prefer IPv4 to IPv6 addresses, since some web servers do not listen on
     * their IPv6 addresses even though they have IPv6 addresses in the DNS.
     */
    hints.ai_family = AF_INET;

    ret = getaddrinfo( hostname, NULL, &hints, &res );
    if (ret != 0)
    {
        TRACE("failed to get IPv4 address of %s (%s), retrying with IPv6\n", debugstr_w(hostnameW), gai_strerror(ret));
        hints.ai_family = AF_INET6;
        ret = getaddrinfo( hostname, NULL, &hints, &res );
        if (ret != 0)
        {
            TRACE("failed to get address of %s (%s)\n", debugstr_w(hostnameW), gai_strerror(ret));
            heap_free( hostname );
            return ERROR_WINHTTP_NAME_NOT_RESOLVED;
        }
    }
    heap_free( hostname );
    memcpy( sa, res->ai_addr, res->ai_addrlen );
    /* Copy port */
    switch (res->ai_family)
    {
    case AF_INET:
        ((struct sockaddr_in *)sa)->sin_port = htons( port );
        break;
    case AF_INET6:
        ((struct sockaddr_in6 *)sa)->sin6_port = htons( port );
        break;
    }

    freeaddrinfo( res );
    return ERROR_SUCCESS;
#else
    FUNC0( &cs_gethostbyname );

    he = FUNC7( hostname );
    FUNC8( hostname );
    if (!he)
    {
        FUNC2("failed to get address of %s (%d)\n", FUNC3(hostnameW), h_errno);
        FUNC1( &cs_gethostbyname );
        return ERROR_WINHTTP_NAME_NOT_RESOLVED;
    }
    FUNC11( sa, 0, sizeof(struct sockaddr_in) );
    FUNC10( &sin->sin_addr, he->h_addr, he->h_length );
    sin->sin_family = he->h_addrtype;
    sin->sin_port = FUNC9( port );

    FUNC1( &cs_gethostbyname );
    return ERROR_SUCCESS;
#endif
}