#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yes ;
typedef  int /*<<< orphan*/  t_tcp ;
typedef  int /*<<< orphan*/  t_socket ;
typedef  TYPE_1__* p_tcp ;
typedef  int /*<<< orphan*/  p_send ;
typedef  int /*<<< orphan*/  p_recv ;
typedef  int /*<<< orphan*/  p_error ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int family; int /*<<< orphan*/  tm; int /*<<< orphan*/  io; int /*<<< orphan*/  buf; int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 int PF_INET6 ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ socket_ioerror ; 
 scalar_t__ socket_recv ; 
 scalar_t__ socket_send ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC11(lua_State *L, int family) {
    t_socket sock;
    const char *err = FUNC2(&sock, family, SOCK_STREAM);
    /* try to allocate a system socket */
    if (!err) {
        /* allocate tcp object */
        p_tcp tcp = (p_tcp) FUNC4(L, sizeof(t_tcp));
        FUNC7(tcp, 0, sizeof(t_tcp));
        /* set its type as master object */
        FUNC0(L, "tcp{master}", -1);
        /* initialize remaining structure fields */
        FUNC9(&sock);
        if (family == PF_INET6) {
            int yes = 1;
            FUNC8(sock, IPPROTO_IPV6, IPV6_V6ONLY,
                (void *)&yes, sizeof(yes));
        }
        tcp->sock = sock;
        FUNC3(&tcp->io, (p_send) socket_send, (p_recv) socket_recv,
                (p_error) socket_ioerror, &tcp->sock);
        FUNC10(&tcp->tm, -1, -1);
        FUNC1(&tcp->buf, &tcp->io, &tcp->tm);
        tcp->family = family;
        return 1;
    } else {
        FUNC5(L);
        FUNC6(L, err);
        return 2;
    }
}