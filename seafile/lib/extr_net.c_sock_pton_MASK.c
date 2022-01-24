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
typedef  int /*<<< orphan*/  uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {void* sin6_port; void* sin6_family; int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {void* sin_port; void* sin_family; int /*<<< orphan*/  sin_addr; } ;

/* Variables and functions */
 void* AF_INET ; 
 void* AF_INET6 ; 
 int FUNC0 (void*,char const*,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2 (const char *addr_str, uint16_t port, struct sockaddr_storage *sa)
{
    struct sockaddr_in  *saddr  = (struct sockaddr_in *) sa;

#ifndef WIN32
    struct sockaddr_in6 *saddr6 = (struct sockaddr_in6 *) sa;
#endif

    if (FUNC0 (AF_INET, addr_str, &saddr->sin_addr) == 1 ) {
        saddr->sin_family = AF_INET;
        saddr->sin_port = FUNC1 (port);
        return 0;
    } 
#ifndef WIN32
    else if (FUNC0 (AF_INET6, addr_str, &saddr6->sin6_addr) == 1)
    {
        saddr6->sin6_family = AF_INET6;
        saddr6->sin6_port = FUNC1 (port);
        return 0;
    }
#endif

    return -1;
}