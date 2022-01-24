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
typedef  int /*<<< orphan*/  u_char ;
typedef  int ssize_t ;
struct TYPE_5__ {size_t len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_6__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  LUA_TBOOLEAN 131 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int /*<<< orphan*/  NGX_ESCAPE_URI_COMPONENT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,size_t) ; 

void
FUNC15(ngx_http_request_t *r, lua_State *L,
    int table, ngx_str_t *args)
{
    u_char              *key;
    size_t               key_len;
    u_char              *value;
    size_t               value_len;
    size_t               len = 0;
    size_t               key_escape = 0;
    uintptr_t            total_escape = 0;
    int                  n;
    int                  i;
    u_char              *p;

    if (table < 0) {
        table = FUNC3(L) + table + 1;
    }

    n = 0;
    FUNC8(L);
    while (FUNC6(L, table) != 0) {
        if (FUNC11(L, -2) != LUA_TSTRING) {
            FUNC1(L, "attempt to use a non-string key in the "
                       "\"args\" option table");
            return;
        }

        key = (u_char *) FUNC10(L, -2, &key_len);

        key_escape = 2 * FUNC13(NULL, key, key_len,
                                                 NGX_ESCAPE_URI_COMPONENT);
        total_escape += key_escape;

        switch (FUNC11(L, -1)) {
        case LUA_TNUMBER:
        case LUA_TSTRING:
            value = (u_char *) FUNC10(L, -1, &value_len);

            total_escape += 2 * FUNC13(NULL, value, value_len,
                                                      NGX_ESCAPE_URI_COMPONENT);

            len += key_len + value_len + (sizeof("=") - 1);
            n++;

            break;

        case LUA_TBOOLEAN:
            if (FUNC9(L, -1)) {
                len += key_len;
                n++;
            }

            break;

        case LUA_TTABLE:

            i = 0;
            FUNC8(L);
            while (FUNC6(L, -2) != 0) {
                if (FUNC4(L, -1)) {
                    if (FUNC9(L, -1)) {
                        len += key_len;

                    } else {
                        FUNC7(L, 1);
                        continue;
                    }

                } else {
                    value = (u_char *) FUNC10(L, -1, &value_len);

                    if (value == NULL) {
                        FUNC1(L, "attempt to use %s as query arg value",
                                   FUNC2(L, -1));
                        return;
                    }

                    total_escape +=
                        2 * FUNC13(NULL, value,
                                                    value_len,
                                                    NGX_ESCAPE_URI_COMPONENT);

                    len += key_len + value_len + (sizeof("=") - 1);
                }

                if (i++ > 0) {
                    total_escape += key_escape;
                }

                n++;
                FUNC7(L, 1);
            }

            break;

        default:
            FUNC1(L, "attempt to use %s as query arg value",
                       FUNC2(L, -1));
            return;
        }

        FUNC7(L, 1);
    }

    len += (size_t) total_escape;

    if (n > 1) {
        len += (n - 1) * (sizeof("&") - 1);
    }

    FUNC0("len 1: %d", (int) len);

    if (r) {
        p = FUNC14(r->pool, len);
        if (p == NULL) {
            FUNC1(L, "no memory");
            return;
        }

    } else {
        p = FUNC5(L, len);
    }

    args->data = p;
    args->len = len;

    i = 0;
    FUNC8(L);
    while (FUNC6(L, table) != 0) {
        key = (u_char *) FUNC10(L, -2, &key_len);

        switch (FUNC11(L, -1)) {
        case LUA_TNUMBER:
        case LUA_TSTRING:

            if (total_escape) {
                p = (u_char *) FUNC13(p, key, key_len,
                                                       NGX_ESCAPE_URI_COMPONENT
                                                       );

            } else {
                FUNC0("shortcut: no escape required");

                p = FUNC12(p, key, key_len);
            }

            *p++ = '=';

            value = (u_char *) FUNC10(L, -1, &value_len);

            if (total_escape) {
                p = (u_char *) FUNC13(p, value, value_len,
                                                       NGX_ESCAPE_URI_COMPONENT
                                                       );

            } else {
                p = FUNC12(p, value, value_len);
            }

            if (i != n - 1) {
                /* not the last pair */
                *p++ = '&';
            }

            i++;

            break;

        case LUA_TBOOLEAN:
            if (FUNC9(L, -1)) {
                if (total_escape) {
                    p = (u_char *) FUNC13(p, key, key_len,
                                                NGX_ESCAPE_URI_COMPONENT);

                } else {
                    FUNC0("shortcut: no escape required");

                    p = FUNC12(p, key, key_len);
                }

                if (i != n - 1) {
                    /* not the last pair */
                    *p++ = '&';
                }

                i++;
            }

            break;

        case LUA_TTABLE:

            FUNC8(L);
            while (FUNC6(L, -2) != 0) {

                if (FUNC4(L, -1)) {
                    if (FUNC9(L, -1)) {
                        if (total_escape) {
                            p = (u_char *) FUNC13(p, key,
    key_len,
    NGX_ESCAPE_URI_COMPONENT);

                        } else {
                            FUNC0("shortcut: no escape required");

                            p = FUNC12(p, key, key_len);
                        }

                    } else {
                        FUNC7(L, 1);
                        continue;
                    }

                } else {

                    if (total_escape) {
                        p = (u_char *)
                                FUNC13(p, key,
                                                        key_len,
                                                        NGX_ESCAPE_URI_COMPONENT
                                                        );

                    } else {
                        FUNC0("shortcut: no escape required");

                        p = FUNC12(p, key, key_len);
                    }

                    *p++ = '=';

                    value = (u_char *) FUNC10(L, -1, &value_len);

                    if (total_escape) {
                        p = (u_char *)
                                FUNC13(p, value,
                                                        value_len,
                                                        NGX_ESCAPE_URI_COMPONENT
                                                        );

                    } else {
                        p = FUNC12(p, value, value_len);
                    }
                }

                if (i != n - 1) {
                    /* not the last pair */
                    *p++ = '&';
                }

                i++;
                FUNC7(L, 1);
            }

            break;

        default:
            FUNC1(L, "should not reach here");
            return;
        }

        FUNC7(L, 1);
    }

    if (p - args->data != (ssize_t) len) {
        FUNC1(L, "buffer error: %d != %d",
                   (int) (p - args->data), (int) len);
        return;
    }
}