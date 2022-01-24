#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* member_0; char* member_2; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_2__ table_field ;
struct http_parser_url {int field_set; TYPE_1__* field_data; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {size_t off; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TFUNCTION ; 
 int /*<<< orphan*/  LUA_TSTRING ; 
 int /*<<< orphan*/  UF_HOST ; 
 int UF_PATH ; 
 int /*<<< orphan*/  UF_PORT ; 
 int /*<<< orphan*/  UF_SCHEMA ; 
 int /*<<< orphan*/  addrlib ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 char* FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,struct http_parser_url*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,struct http_parser_url*) ; 
 char* script_wrk_connect ; 
 char* script_wrk_lookup ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,TYPE_2__ const*) ; 
 int /*<<< orphan*/  statslib ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC18 (char*,char) ; 
 int /*<<< orphan*/  threadlib ; 

lua_State *FUNC19(char *file, char *url, char **headers) {
    lua_State *L = FUNC4();
    FUNC5(L);
    (void) FUNC2(L, "wrk = require \"wrk\"");

    FUNC3(L, "wrk.addr");
    FUNC6(L, NULL, addrlib);
    FUNC3(L, "wrk.stats");
    FUNC6(L, NULL, statslib);
    FUNC3(L, "wrk.thread");
    FUNC6(L, NULL, threadlib);

    struct http_parser_url parts = {};
    FUNC15(url, &parts);
    char *path = "/";

    if (parts.field_set & (1 << UF_PATH)) {
        path = &url[parts.field_data[UF_PATH].off];
    }

    const table_field fields[] = {
        { "lookup",  LUA_TFUNCTION, script_wrk_lookup  },
        { "connect", LUA_TFUNCTION, script_wrk_connect },
        { "path",    LUA_TSTRING,   path               },
        { NULL,      0,             NULL               },
    };

    FUNC8(L, "wrk");

    FUNC16(L, 4, "scheme", FUNC14(L, url, &parts, UF_SCHEMA));
    FUNC16(L, 4, "host",   FUNC14(L, url, &parts, UF_HOST));
    FUNC16(L, 4, "port",   FUNC14(L, url, &parts, UF_PORT));
    FUNC17(L, 4, fields);

    FUNC7(L, 4, "headers");
    for (char **h = headers; *h; h++) {
        char *p = FUNC18(*h, ':');
        if (p && p[1] == ' ') {
            FUNC10(L, *h, p - *h);
            FUNC11(L, p + 2);
            FUNC12(L, 5);
        }
    }
    FUNC9(L, 5);

    if (file && FUNC1(L, file)) {
        const char *cause = FUNC13(L, -1);
        FUNC0(stderr, "%s: %s\n", file, cause);
    }

    return L;
}