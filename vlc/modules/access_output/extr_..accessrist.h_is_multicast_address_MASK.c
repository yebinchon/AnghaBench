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
struct addrinfo {int ai_flags; scalar_t__ ai_family; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int AI_IDN ; 
 int AI_NUMERICSERV ; 
 int AI_PASSIVE ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,struct addrinfo*,struct addrinfo**) ; 

__attribute__((used)) static bool FUNC7(char *psz_dst_server)
{
    int ret;
    int ismulticast = 0;

    struct addrinfo hint = {
        .ai_socktype = SOCK_DGRAM,
        .ai_protocol = IPPROTO_UDP,
        .ai_flags = AI_NUMERICSERV | AI_IDN | AI_PASSIVE,
    }, *res;

    ret = FUNC6(psz_dst_server, 0, &hint, &res);
    if (ret) {
        return 0;
    } else if(res->ai_family == AF_INET) {
        unsigned long addr = FUNC3(FUNC2(psz_dst_server));
        ismulticast =  FUNC0(addr);
    } else if (res->ai_family == AF_INET6) {
        if (FUNC4(psz_dst_server) >= 5 && (FUNC5("[ff00", psz_dst_server, 5) == 0 ||
                    FUNC5("[FF00", psz_dst_server, 5) == 0))
            ismulticast = 1;
    }

    FUNC1(res);

    return ismulticast;
}