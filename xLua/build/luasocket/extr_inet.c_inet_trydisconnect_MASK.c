#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; void* sin6_family; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; void* sin_family; } ;
typedef  int /*<<< orphan*/  sin6 ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  p_timeout ;
typedef  int /*<<< orphan*/  p_socket ;
typedef  int /*<<< orphan*/  SA ;

/* Variables and functions */
 void* AF_UNSPEC ; 
 struct in6_addr IN6ADDR_ANY_INIT ; 
 int /*<<< orphan*/  INADDR_ANY ; 
#define  PF_INET 129 
#define  PF_INET6 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 

const char *FUNC3(p_socket ps, int family, p_timeout tm)
{
    switch (family) {
        case PF_INET: {
            struct sockaddr_in sin;
            FUNC0((char *) &sin, 0, sizeof(sin));
            sin.sin_family = AF_UNSPEC;
            sin.sin_addr.s_addr = INADDR_ANY;
            return FUNC2(FUNC1(ps, (SA *) &sin, 
                sizeof(sin), tm));
        }
        case PF_INET6: {
            struct sockaddr_in6 sin6;
            struct in6_addr addrany = IN6ADDR_ANY_INIT; 
            FUNC0((char *) &sin6, 0, sizeof(sin6));
            sin6.sin6_family = AF_UNSPEC;
            sin6.sin6_addr = addrany;
            return FUNC2(FUNC1(ps, (SA *) &sin6, 
                sizeof(sin6), tm));
        }
    }
    return NULL;
}