#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t left; scalar_t__ err; } ;
typedef  TYPE_1__ mp_cur ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int INT_MAX ; 
 scalar_t__ MP_CUR_ERROR_BADFMT ; 
 scalar_t__ MP_CUR_ERROR_EOF ; 
 char* FUNC0 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC7(lua_State *L, int limit, int offset) {
    size_t len;
    const char *s;
    mp_cur c;
    int cnt; /* Number of objects unpacked */
    int decode_all = (!limit && !offset);

    s = FUNC0(L,1,&len); /* if no match, exits */

    if (offset < 0 || limit < 0) /* requesting negative off or lim is invalid */
        return FUNC2(L,
            "Invalid request to unpack with offset of %d and limit of %d.",
            offset, len);
    else if (offset > len)
        return FUNC2(L,
            "Start offset %d greater than input length %d.", offset, len);

    if (decode_all) limit = INT_MAX;

    FUNC5(&c,(const unsigned char *)s+offset,len-offset);

    /* We loop over the decode because this could be a stream
     * of multiple top-level values serialized together */
    for(cnt = 0; c.left > 0 && cnt < limit; cnt++) {
        FUNC6(L,&c);

        if (c.err == MP_CUR_ERROR_EOF) {
            return FUNC2(L,"Missing bytes in input.");
        } else if (c.err == MP_CUR_ERROR_BADFMT) {
            return FUNC2(L,"Bad data format in input.");
        }
    }

    if (!decode_all) {
        /* c->left is the remaining size of the input buffer.
         * subtract the entire buffer size from the unprocessed size
         * to get our next start offset */
        int offset = len - c.left;

        FUNC1(L, 1, "in function mp_unpack_full");

        /* Return offset -1 when we have have processed the entire buffer. */
        FUNC4(L, c.left == 0 ? -1 : offset);
        /* Results are returned with the arg elements still
         * in place. Lua takes care of only returning
         * elements above the args for us.
         * In this case, we have one arg on the stack
         * for this function, so we insert our first return
         * value at position 2. */
        FUNC3(L, 2);
        cnt += 1; /* increase return count by one to make room for offset */
    }

    return cnt;
}