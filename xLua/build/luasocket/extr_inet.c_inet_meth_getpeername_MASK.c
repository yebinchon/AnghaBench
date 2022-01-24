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
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  port ;
typedef  int /*<<< orphan*/  peer ;
typedef  int /*<<< orphan*/ * p_socket ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  SA ;

/* Variables and functions */
 int INET6_ADDRSTRLEN ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 int PF_INET ; 
 int PF_INET6 ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC0 (int) ; 
 int FUNC1 (struct sockaddr*,int,char*,int,char*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char**,int) ; 

int FUNC9(lua_State *L, p_socket ps, int family)
{
    int err;
    struct sockaddr_storage peer;
    socklen_t peer_len = sizeof(peer);
    char name[INET6_ADDRSTRLEN];
    char port[6]; /* 65535 = 5 bytes + 0 to terminate it */
    if (FUNC2(*ps, (SA *) &peer, &peer_len) < 0) {
        FUNC5(L);
        FUNC6(L, FUNC7(errno));
        return 2;
    }
	err = FUNC1((struct sockaddr *) &peer, peer_len,
        name, INET6_ADDRSTRLEN,
        port, sizeof(port), NI_NUMERICHOST | NI_NUMERICSERV);
    if (err) {
        FUNC5(L);
        FUNC6(L, FUNC0(err));
        return 2;
    }
    FUNC6(L, name);
    FUNC3(L, (int) FUNC8(port, (char **) NULL, 10));
    if (family == PF_INET) {
        FUNC4(L, "inet");
    } else if (family == PF_INET6) {
        FUNC4(L, "inet6");
    } else {
        FUNC4(L, "uknown family");
    }
    return 3;
}