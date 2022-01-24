#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  p_timeout ;
typedef  TYPE_2__* p_buffer ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ lua_Number ;
struct TYPE_6__ {TYPE_1__* io; int /*<<< orphan*/  tm; } ;
struct TYPE_5__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  (* error ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int IO_DONE ; 
 char* FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,char const*,long,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(lua_State *L, p_buffer buf) {
    int top = FUNC2(L);
    int err = IO_DONE;
    size_t size = 0, sent = 0;
    const char *data = FUNC0(L, 2, &size);
    long start = (long) FUNC1(L, 3, 1);
    long end = (long) FUNC1(L, 4, -1);
#ifdef LUASOCKET_DEBUG
    p_timeout tm = timeout_markstart(buf->tm);
#endif
    if (start < 0) start = (long) (size+start+1);
    if (end < 0) end = (long) (size+end+1);
    if (start < 1) start = (long) 1;
    if (end > (long) size) end = (long) size;
    if (start <= end) err = FUNC6(buf, data+start-1, end-start+1, &sent);
    /* check if there was an error */
    if (err != IO_DONE) {
        FUNC3(L);
        FUNC5(L, buf->io->error(buf->io->ctx, err)); 
        FUNC4(L, (lua_Number) (sent+start-1));
    } else {
        FUNC4(L, (lua_Number) (sent+start-1));
        FUNC3(L);
        FUNC3(L);
    }
#ifdef LUASOCKET_DEBUG
    /* push time elapsed during operation as the last return value */
    lua_pushnumber(L, timeout_gettime() - timeout_getstart(tm));
#endif
    return FUNC2(L) - top;
}