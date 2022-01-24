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
typedef  scalar_t__ t_socket ;
typedef  TYPE_1__* p_unix ;
typedef  int /*<<< orphan*/  p_send ;
typedef  int /*<<< orphan*/  p_recv ;
typedef  int /*<<< orphan*/  p_error ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int /*<<< orphan*/  tm; int /*<<< orphan*/  io; int /*<<< orphan*/  buf; scalar_t__ sock; } ;

/* Variables and functions */
 int O_NOCTTY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,int) ; 
 scalar_t__ socket_ioerror ; 
 scalar_t__ socket_read ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ socket_write ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC12(lua_State *L) {
    const char* path = FUNC3(L, 1);

    /* allocate unix object */
    p_unix un = (p_unix) FUNC4(L, sizeof(t_unix));

    /* open serial device */
    t_socket sock = FUNC8(path, O_NOCTTY|O_RDWR);

    /*printf("open %s on %d\n", path, sock);*/

    if (sock < 0)  {
        FUNC5(L);
        FUNC7(L, FUNC10(errno));
        FUNC6(L, errno);
        return 3;
    }
    /* set its type as client object */
    FUNC0(L, "serial{client}", -1);
    /* initialize remaining structure fields */
    FUNC9(&sock);
    un->sock = sock;
    FUNC2(&un->io, (p_send) socket_write, (p_recv) socket_read, 
            (p_error) socket_ioerror, &un->sock);
    FUNC11(&un->tm, -1, -1);
    FUNC1(&un->buf, &un->io, &un->tm);
    return 1;
}