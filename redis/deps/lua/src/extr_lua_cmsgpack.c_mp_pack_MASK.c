#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ len; int /*<<< orphan*/  free; scalar_t__ b; } ;
typedef  TYPE_1__ mp_buf ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC10(lua_State *L) {
    int nargs = FUNC4(L);
    int i;
    mp_buf *buf;

    if (nargs == 0)
        return FUNC0(L, 0, "MessagePack pack needs input.");

    if (!FUNC2(L, nargs))
        return FUNC0(L, 0, "Too many arguments for MessagePack pack.");

    buf = FUNC8(L);
    for(i = 1; i <= nargs; i++) {
        /* Copy argument i to top of stack for _encode processing;
         * the encode function pops it from the stack when complete. */
        FUNC1(L, 1, "in function mp_check");
        FUNC6(L, i);

        FUNC9(L,buf,0);

        FUNC5(L,(char*)buf->b,buf->len);

        /* Reuse the buffer for the next operation by
         * setting its free count to the total buffer size
         * and the current position to zero. */
        buf->free += buf->len;
        buf->len = 0;
    }
    FUNC7(L, buf);

    /* Concatenate all nargs buffers together */
    FUNC3(L, nargs);
    return 1;
}