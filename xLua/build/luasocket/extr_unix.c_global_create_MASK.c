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
typedef  int /*<<< orphan*/  p_send ;
typedef  int /*<<< orphan*/  p_recv ;
typedef  int /*<<< orphan*/  p_error ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int /*<<< orphan*/  tm; int /*<<< orphan*/  io; int /*<<< orphan*/  buf; int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int IO_DONE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ socket_ioerror ; 
 scalar_t__ socket_recv ; 
 scalar_t__ socket_send ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC10(lua_State *L) {
    t_socket sock;
    int err = FUNC6(&sock, AF_UNIX, SOCK_STREAM, 0);
    /* try to allocate a system socket */
    if (err == IO_DONE) { 
        /* allocate unix object */
        p_unix un = (p_unix) FUNC3(L, sizeof(t_unix));
        /* set its type as master object */
        FUNC0(L, "unix{master}", -1);
        /* initialize remaining structure fields */
        FUNC7(&sock);
        un->sock = sock;
        FUNC2(&un->io, (p_send) socket_send, (p_recv) socket_recv, 
                (p_error) socket_ioerror, &un->sock);
        FUNC9(&un->tm, -1, -1);
        FUNC1(&un->buf, &un->io, &un->tm);
        return 1;
    } else {
        FUNC4(L);
        FUNC5(L, FUNC8(err));
        return 2;
    }
}