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
typedef  int /*<<< orphan*/  t_tcp ;
typedef  int /*<<< orphan*/  t_socket ;
typedef  int /*<<< orphan*/  p_timeout ;
typedef  TYPE_1__* p_tcp ;
typedef  int /*<<< orphan*/  p_send ;
typedef  int /*<<< orphan*/  p_recv ;
typedef  int /*<<< orphan*/  p_error ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int /*<<< orphan*/  family; int /*<<< orphan*/  tm; int /*<<< orphan*/  io; int /*<<< orphan*/  buf; int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ socket_ioerror ; 
 scalar_t__ socket_recv ; 
 scalar_t__ socket_send ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(lua_State *L)
{
    p_tcp server = (p_tcp) FUNC0(L, "tcp{server}", 1);
    p_timeout tm = FUNC11(&server->tm);
    t_socket sock;
    const char *err = FUNC3(&server->sock, server->family, &sock, tm);
    /* if successful, push client socket */
    if (err == NULL) {
        p_tcp clnt = (p_tcp) FUNC5(L, sizeof(t_tcp));
        FUNC1(L, "tcp{client}", -1);
        /* initialize structure fields */
        FUNC8(clnt, 0, sizeof(t_tcp));
        FUNC9(&sock);
        clnt->sock = sock;
        FUNC4(&clnt->io, (p_send) socket_send, (p_recv) socket_recv,
                (p_error) socket_ioerror, &clnt->sock);
        FUNC10(&clnt->tm, -1, -1);
        FUNC2(&clnt->buf, &clnt->io, &clnt->tm);
        clnt->family = server->family;
        return 1;
    } else {
        FUNC6(L);
        FUNC7(L, err);
        return 2;
    }
}