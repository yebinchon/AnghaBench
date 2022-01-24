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
typedef  char* sds ;
struct TYPE_7__ {char* ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  client ;
struct TYPE_8__ {int /*<<< orphan*/  lua_scripts_mem; int /*<<< orphan*/ * lua_client; int /*<<< orphan*/  lua_scripts; } ;

/* Variables and functions */
 int DICT_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (char*) ; 
 char* FUNC11 (char*,char*) ; 
 char* FUNC12 (char*,char*,int) ; 
 char* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (char*) ; 
 char* FUNC16 (char*,int) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int) ; 

sds FUNC19(client *c, lua_State *lua, robj *body) {
    char funcname[43];
    dictEntry *de;

    funcname[0] = 'f';
    funcname[1] = '_';
    FUNC18(funcname+2,body->ptr,FUNC15(body->ptr));

    sds sha = FUNC16(funcname+2,40);
    if ((de = FUNC2(server.lua_scripts,sha)) != NULL) {
        FUNC14(sha);
        return FUNC3(de);
    }

    sds funcdef = FUNC13();
    funcdef = FUNC11(funcdef,"function ");
    funcdef = FUNC12(funcdef,funcname,42);
    funcdef = FUNC12(funcdef,"() ",3);
    funcdef = FUNC12(funcdef,body->ptr,FUNC15(body->ptr));
    funcdef = FUNC12(funcdef,"\nend",4);

    if (FUNC6(lua,funcdef,FUNC15(funcdef),"@user_script")) {
        if (c != NULL) {
            FUNC0(c,
                "Error compiling script (new function): %s\n",
                FUNC9(lua,-1));
        }
        FUNC8(lua,1);
        FUNC14(sha);
        FUNC14(funcdef);
        return NULL;
    }
    FUNC14(funcdef);

    if (FUNC7(lua,0,0,0)) {
        if (c != NULL) {
            FUNC0(c,"Error running script (new function): %s\n",
                FUNC9(lua,-1));
        }
        FUNC8(lua,1);
        FUNC14(sha);
        return NULL;
    }

    /* We also save a SHA1 -> Original script map in a dictionary
     * so that we can replicate / write in the AOF all the
     * EVALSHA commands as EVAL using the original script. */
    int retval = FUNC1(server.lua_scripts,sha,body);
    FUNC17(c ? c : server.lua_client,NULL,retval == DICT_OK);
    server.lua_scripts_mem += FUNC10(sha) + FUNC4(body);
    FUNC5(body);
    return sha;
}