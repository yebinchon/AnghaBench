#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  p_timeout ;
typedef  TYPE_2__* p_buffer ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;
struct TYPE_8__ {TYPE_1__* io; int /*<<< orphan*/  tm; } ;
struct TYPE_7__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  (* error ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int IO_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,char*,size_t*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 double FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_2__*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

int FUNC21(lua_State *L, p_buffer buf) {
    int err = IO_DONE, top = FUNC6(L);
    luaL_Buffer b;
    size_t size;
    const char *part = FUNC3(L, 3, "", &size);
#ifdef LUASOCKET_DEBUG
    p_timeout tm = timeout_markstart(buf->tm);
#endif
    /* initialize buffer with optional extra prefix 
     * (useful for concatenating previous partial results) */
    FUNC2(L, &b);
    FUNC0(&b, part, size);
    /* receive new patterns */
    if (!FUNC7(L, 2)) {
        const char *p= FUNC4(L, 2, "*l");
        if (p[0] == '*' && p[1] == 'l') err = FUNC15(buf, &b);
        else if (p[0] == '*' && p[1] == 'a') err = FUNC14(buf, &b); 
        else FUNC1(L, 0, 2, "invalid receive pattern");
    /* get a fixed number of bytes (minus what was already partially 
     * received) */
    } else {
        double n = FUNC13(L, 2); 
        size_t wanted = (size_t) n;
        FUNC1(L, n >= 0, 2, "invalid receive pattern");
        if (size == 0 || wanted > size)
            err = FUNC16(buf, wanted-size, &b);
    }
    /* check if there was an error */
    if (err != IO_DONE) {
        /* we can't push anyting in the stack before pushing the
         * contents of the buffer. this is the reason for the complication */
        FUNC5(&b);
        FUNC10(L, buf->io->error(buf->io->ctx, err)); 
        FUNC11(L, -2); 
        FUNC8(L);
        FUNC12(L, -4);
    } else {
        FUNC5(&b);
        FUNC8(L);
        FUNC8(L);
    }
#ifdef LUASOCKET_DEBUG
    /* push time elapsed during operation as the last return value */
    lua_pushnumber(L, timeout_gettime() - timeout_getstart(tm));
#endif
    return FUNC6(L) - top;
}