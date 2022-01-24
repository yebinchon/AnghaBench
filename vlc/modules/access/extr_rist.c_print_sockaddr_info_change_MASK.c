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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int INET6_ADDRSTRLEN ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(stream_t *p_access, struct sockaddr *x, struct sockaddr *y)
{
    if (x->sa_family == AF_INET)
    {
        struct sockaddr_in *xin = (void*)x, *yin = (void*)y;
        FUNC2(p_access, "Peer IP:Port change detected: old IP:Port %s:%d, new IP:Port %s:%d",
            FUNC0(xin->sin_addr), FUNC3(xin->sin_port), FUNC0(yin->sin_addr),
            FUNC3(yin->sin_port));
    }
    else if (x->sa_family == AF_INET6)
    {
        struct sockaddr_in6 *xin6 = (void*)x, *yin6 = (void*)y;
        char oldstr[INET6_ADDRSTRLEN];
        char newstr[INET6_ADDRSTRLEN];
        FUNC1(xin6->sin6_family, &xin6->sin6_addr, oldstr, sizeof(struct in6_addr));
        FUNC1(yin6->sin6_family, &yin6->sin6_addr, newstr, sizeof(struct in6_addr));
        FUNC2(p_access, "Peer IP:Port change detected: old IP:Port %s:%d, new IP:Port %s:%d",
            oldstr, FUNC3(xin6->sin6_port), newstr, FUNC3(yin6->sin6_port));
    }
}