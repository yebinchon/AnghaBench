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
typedef  char u_char ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_UNESCAPE_URI_COMPONENT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (char**,char**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

int
FUNC13(lua_State *L, u_char *buf, u_char *last, int max)
{
    u_char                      *p, *q;
    u_char                      *src, *dst;
    unsigned                     parsing_value;
    size_t                       len;
    int                          count = 0;
    int                          top;

    top = FUNC2(L);

    p = buf;

    parsing_value = 0;
    q = p;

    while (p != last) {
        if (*p == '=' && ! parsing_value) {
            /* key data is between p and q */

            src = q; dst = q;

            FUNC11(&dst, &src, p - q,
                                      NGX_UNESCAPE_URI_COMPONENT);

            FUNC0("pushing key %.*s", (int) (dst - q), q);

            /* push the key */
            FUNC6(L, (char *) q, dst - q);

            /* skip the current '=' char */
            p++;

            q = p;
            parsing_value = 1;

        } else if (*p == '&') {
            /* reached the end of a key or a value, just save it */
            src = q; dst = q;

            FUNC11(&dst, &src, p - q,
                                      NGX_UNESCAPE_URI_COMPONENT);

            FUNC0("pushing key or value %.*s", (int) (dst - q), q);

            /* push the value or key */
            FUNC6(L, (char *) q, dst - q);

            /* skip the current '&' char */
            p++;

            q = p;

            if (parsing_value) {
                /* end of the current pair's value */
                parsing_value = 0;

            } else {
                /* the current parsing pair takes no value,
                 * just push the value "true" */
                FUNC0("pushing boolean true");

                FUNC4(L, 1);
            }

            (void) FUNC7(L, -2, &len);

            if (len == 0) {
                /* ignore empty string key pairs */
                FUNC0("popping key and value...");
                FUNC3(L, 2);

            } else {
                FUNC0("setting table...");
                FUNC10(L, top);
            }

            if (max > 0 && ++count == max) {
                FUNC5(L, "truncated");

                FUNC12(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                               "lua hit query args limit %d", max);
                return 2;
            }

        } else {
            p++;
        }
    }

    if (p != q || parsing_value) {
        src = q; dst = q;

        FUNC11(&dst, &src, p - q,
                                  NGX_UNESCAPE_URI_COMPONENT);

        FUNC0("pushing key or value %.*s", (int) (dst - q), q);

        FUNC6(L, (char *) q, dst - q);

        if (!parsing_value) {
            FUNC0("pushing boolean true...");
            FUNC4(L, 1);
        }

        (void) FUNC7(L, -2, &len);

        if (len == 0) {
            /* ignore empty string key pairs */
            FUNC0("popping key and value...");
            FUNC3(L, 2);

        } else {
            FUNC0("setting table...");
            FUNC10(L, top);
        }
    }

    FUNC0("gettop: %d", FUNC2(L));
    FUNC0("type: %s", FUNC9(L, FUNC8(L, 1)));

    if (FUNC2(L) != top) {
        return FUNC1(L, "internal error: stack in bad state");
    }

    return 1;
}