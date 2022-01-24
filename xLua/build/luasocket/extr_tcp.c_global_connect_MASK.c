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
typedef  int /*<<< orphan*/  t_tcp ;
struct addrinfo {int family; int ai_family; int /*<<< orphan*/  sock; int /*<<< orphan*/  tm; void* ai_socktype; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  io; int /*<<< orphan*/  buf; } ;
typedef  struct addrinfo* p_tcp ;
typedef  int /*<<< orphan*/  p_send ;
typedef  int /*<<< orphan*/  p_recv ;
typedef  int /*<<< orphan*/  p_error ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  connecthints ;
typedef  int /*<<< orphan*/  bindhints ;

/* Variables and functions */
 int /*<<< orphan*/  AI_PASSIVE ; 
 int PF_UNSPEC ; 
 int /*<<< orphan*/  SOCKET_INVALID ; 
 void* SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*,char const*,struct addrinfo*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int*,char const*,char const*,int /*<<< orphan*/ *,struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ socket_ioerror ; 
 scalar_t__ socket_recv ; 
 scalar_t__ socket_send ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC14(lua_State *L) {
    const char *remoteaddr = FUNC6(L, 1);
    const char *remoteserv = FUNC6(L, 2);
    const char *localaddr  = FUNC7(L, 3, NULL);
    const char *localserv  = FUNC7(L, 4, "0");
    int family = FUNC2(L, 5, "unspec");
    p_tcp tcp = (p_tcp) FUNC8(L, sizeof(t_tcp));
    struct addrinfo bindhints, connecthints;
    const char *err = NULL;
    /* initialize tcp structure */
    FUNC11(tcp, 0, sizeof(t_tcp));
    FUNC5(&tcp->io, (p_send) socket_send, (p_recv) socket_recv,
            (p_error) socket_ioerror, &tcp->sock);
    FUNC13(&tcp->tm, -1, -1);
    FUNC1(&tcp->buf, &tcp->io, &tcp->tm);
    tcp->sock = SOCKET_INVALID;
    tcp->family = PF_UNSPEC;
    /* allow user to pick local address and port */
    FUNC11(&bindhints, 0, sizeof(bindhints));
    bindhints.ai_socktype = SOCK_STREAM;
    bindhints.ai_family = family;
    bindhints.ai_flags = AI_PASSIVE;
    if (localaddr) {
        err = FUNC3(&tcp->sock, localaddr, localserv, &bindhints);
        if (err) {
            FUNC9(L);
            FUNC10(L, err);
            return 2;
        }
        tcp->family = bindhints.ai_family;
    }
    /* try to connect to remote address and port */
    FUNC11(&connecthints, 0, sizeof(connecthints));
    connecthints.ai_socktype = SOCK_STREAM;
    /* make sure we try to connect only to the same family */
    connecthints.ai_family = bindhints.ai_family;
    err = FUNC4(&tcp->sock, &tcp->family, remoteaddr, remoteserv,
         &tcp->tm, &connecthints);
    if (err) {
        FUNC12(&tcp->sock);
        FUNC9(L);
        FUNC10(L, err);
        return 2;
    }
    FUNC0(L, "tcp{client}", -1);
    return 1;
}