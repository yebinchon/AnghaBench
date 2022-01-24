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
typedef  int /*<<< orphan*/  val ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int sa_family; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 int PF_INET ; 
 int PF_INET6 ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,struct sockaddr_storage*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8 (int fd)
{
    union
    {
        struct sockaddr         sa;
        struct sockaddr_storage ss;
        struct sockaddr_in      sin;
#ifdef AF_INET6
        struct sockaddr_in6     sin6;
#endif
    } addr;

    while (FUNC3 (fd, &addr.ss, sizeof (addr.ss), 0) == sizeof (addr.ss))
    {
        unsigned len;
        int sock;
        int family;

        switch (addr.sa.sa_family)
        {
            case AF_INET:
                if (!FUNC2 (addr.sin.sin_port))
                {
                    if (FUNC4 (fd, EACCES))
                        return;
                    continue;
                }
                len = sizeof (struct sockaddr_in);
                family = PF_INET;
                break;

#ifdef AF_INET6
            case AF_INET6:
                if (!FUNC2 (addr.sin6.sin6_port))
                {
                    if (FUNC4 (fd, EACCES))
                        return;
                    continue;
                }
                len = sizeof (struct sockaddr_in6);
                family = PF_INET6;
                break;
#endif

            default:
                if (FUNC4 (fd, EAFNOSUPPORT))
                    return;
                continue;
        }

        sock = FUNC7 (family, SOCK_STREAM, IPPROTO_TCP);
        if (sock != -1)
        {
            const int val = 1;

            FUNC6 (sock, SOL_SOCKET, SO_REUSEADDR, &val, sizeof (val));
#ifdef AF_INET6
            if (addr.sa.sa_family == AF_INET6)
                FUNC6 (sock, IPPROTO_IPV6, IPV6_V6ONLY, &val, sizeof (val));
#endif
            if (FUNC0 (sock, &addr.sa, len) == 0)
            {
                FUNC5 (fd, sock);
                FUNC1 (sock);
                continue;
            }
            FUNC1 (sock);
        }
        FUNC4 (fd, errno);
    }
}