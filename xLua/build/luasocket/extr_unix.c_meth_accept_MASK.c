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
typedef  int /*<<< orphan*/  t_unix ;
typedef  int /*<<< orphan*/  t_socket ;
typedef  TYPE_1__* p_unix ;
typedef  int /*<<< orphan*/  p_timeout ;
typedef  int /*<<< orphan*/  p_send ;
typedef  int /*<<< orphan*/  p_recv ;
typedef  int /*<<< orphan*/  p_error ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int /*<<< orphan*/  tm; int /*<<< orphan*/  io; int /*<<< orphan*/  buf; int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int IO_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ socket_ioerror ; 
 scalar_t__ socket_recv ; 
 scalar_t__ socket_send ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(lua_State *L) {
    p_unix server = (p_unix) FUNC0(L, "unix{server}", 1);
    p_timeout tm = FUNC11(&server->tm);
    t_socket sock;
    int err = FUNC7(&server->sock, &sock, NULL, NULL, tm);
    /* if successful, push client socket */
    if (err == IO_DONE) {
        p_unix clnt = (p_unix) FUNC4(L, sizeof(t_unix));
        FUNC1(L, "unix{client}", -1);
        /* initialize structure fields */
        FUNC8(&sock);
        clnt->sock = sock;
        FUNC3(&clnt->io, (p_send)socket_send, (p_recv)socket_recv, 
                (p_error) socket_ioerror, &clnt->sock);
        FUNC10(&clnt->tm, -1, -1);
        FUNC2(&clnt->buf, &clnt->io, &clnt->tm);
        return 1;
    } else {
        FUNC5(L); 
        FUNC6(L, FUNC9(err));
        return 2;
    }
}