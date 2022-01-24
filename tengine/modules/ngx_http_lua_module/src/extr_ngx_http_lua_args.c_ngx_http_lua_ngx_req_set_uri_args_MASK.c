#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_9__ {size_t len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ ngx_str_t ;
struct TYPE_8__ {size_t len; int /*<<< orphan*/ * data; } ;
struct TYPE_10__ {scalar_t__ valid_unparsed_uri; TYPE_1__ args; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ ngx_http_request_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC13(lua_State *L)
{
    ngx_http_request_t          *r;
    ngx_str_t                    args;
    const char                  *msg;
    size_t                       len;
    u_char                      *p;

    if (FUNC4(L) != 1) {
        return FUNC2(L, "expecting 1 argument but seen %d",
                          FUNC4(L));
    }

    r = FUNC9(L);
    if (r == NULL) {
        return FUNC2(L, "no request object found");
    }

    FUNC8(L, r);

    switch (FUNC7(L, 1)) {
    case LUA_TNUMBER:
    case LUA_TSTRING:
        p = (u_char *) FUNC6(L, 1, &len);

        args.data = FUNC12(r->pool, len);
        if (args.data == NULL) {
            return FUNC2(L, "no memory");
        }

        FUNC11(args.data, p, len);

        args.len = len;
        break;

    case LUA_TTABLE:
        FUNC10(r, L, 1, &args);

        FUNC0("args: %.*s", (int) args.len, args.data);

        break;

    default:
        msg = FUNC5(L, "string, number, or table expected, "
                              "but got %s", FUNC3(L, 2));
        return FUNC1(L, 1, msg);
    }

    FUNC0("args: %.*s", (int) args.len, args.data);

    r->args.data = args.data;
    r->args.len = args.len;

    r->valid_unparsed_uri = 0;

    return 0;
}