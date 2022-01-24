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
struct addrinfo {int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_socktype; } ;
typedef  TYPE_1__* p_tcp ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  connecthints ;
struct TYPE_2__ {int /*<<< orphan*/  tm; int /*<<< orphan*/  family; int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,struct addrinfo*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(lua_State *L)
{
    p_tcp tcp = (p_tcp) FUNC0(L, "tcp{any}", 1);
    const char *address =  FUNC3(L, 2);
    const char *port = FUNC3(L, 3);
    struct addrinfo connecthints;
    const char *err;
    FUNC7(&connecthints, 0, sizeof(connecthints));
    connecthints.ai_socktype = SOCK_STREAM;
    /* make sure we try to connect only to the same family */
    connecthints.ai_family = tcp->family;
    FUNC8(&tcp->tm);
    err = FUNC2(&tcp->sock, &tcp->family, address, port, 
        &tcp->tm, &connecthints);
    /* have to set the class even if it failed due to non-blocking connects */
    FUNC1(L, "tcp{client}", 1);
    if (err) {
        FUNC4(L);
        FUNC6(L, err);
        return 2;
    }
    FUNC5(L, 1);
    return 1;
}