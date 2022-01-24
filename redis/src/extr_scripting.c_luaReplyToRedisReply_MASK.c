#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_18__ {size_t resp; } ;
typedef  TYPE_2__ client ;
struct TYPE_20__ {TYPE_1__* lua_client; } ;
struct TYPE_19__ {int /*<<< orphan*/ * null; int /*<<< orphan*/  cone; } ;
struct TYPE_17__ {int resp; } ;

/* Variables and functions */
#define  LUA_TBOOLEAN 131 
 int LUA_TNIL ; 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,long long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 
 TYPE_7__ server ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,void*,int) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,void*,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*,void*,int) ; 
 TYPE_3__ shared ; 

void FUNC28(client *c, lua_State *lua) {
    int t = FUNC19(lua,-1);

    switch(t) {
    case LUA_TSTRING:
        FUNC2(c,(char*)FUNC18(lua,-1),FUNC15(lua,-1));
        break;
    case LUA_TBOOLEAN:
        if (server.lua_client->resp == 2)
            FUNC0(c,FUNC16(lua,-1) ? shared.cone :
                                               shared.null[c->resp]);
        else
            FUNC1(c,FUNC16(lua,-1));
        break;
    case LUA_TNUMBER:
        FUNC5(c,(long long)FUNC17(lua,-1));
        break;
    case LUA_TTABLE:
        /* We need to check if it is an array, an error, or a status reply.
         * Error are returned as a single element table with 'err' field.
         * Status replies are returned as single element table with 'ok'
         * field. */

        /* Handle error reply. */
        FUNC13(lua,"err");
        FUNC8(lua,-2);
        t = FUNC19(lua,-1);
        if (t == LUA_TSTRING) {
            sds err = FUNC24(FUNC18(lua,-1));
            FUNC23(err,"\r\n","  ",2);
            FUNC7(c,FUNC20(FUNC21(),"-%s\r\n",err));
            FUNC22(err);
            FUNC10(lua,2);
            return;
        }
        FUNC10(lua,1); /* Discard field name pushed before. */

        /* Handle status reply. */
        FUNC13(lua,"ok");
        FUNC8(lua,-2);
        t = FUNC19(lua,-1);
        if (t == LUA_TSTRING) {
            sds ok = FUNC24(FUNC18(lua,-1));
            FUNC23(ok,"\r\n","  ",2);
            FUNC7(c,FUNC20(FUNC21(),"+%s\r\n",ok));
            FUNC22(ok);
            FUNC10(lua,2);
            return;
        }
        FUNC10(lua,1); /* Discard field name pushed before. */

        /* Handle double reply. */
        FUNC13(lua,"double");
        FUNC8(lua,-2);
        t = FUNC19(lua,-1);
        if (t == LUA_TNUMBER) {
            FUNC4(c,FUNC17(lua,-1));
            FUNC10(lua,2);
            return;
        }
        FUNC10(lua,1); /* Discard field name pushed before. */

        /* Handle map reply. */
        FUNC13(lua,"map");
        FUNC8(lua,-2);
        t = FUNC19(lua,-1);
        if (t == LUA_TTABLE) {
            int maplen = 0;
            void *replylen = FUNC3(c);
            FUNC11(lua); /* Use nil to start iteration. */
            while (FUNC9(lua,-2)) {
                /* Stack now: table, key, value */
                FUNC28(c, lua); /* Return value. */
                FUNC14(lua,-1);        /* Dup key before consuming. */
                FUNC28(c, lua); /* Return key. */
                /* Stack now: table, key. */
                maplen++;
            }
            FUNC26(c,replylen,maplen);
            FUNC10(lua,2);
            return;
        }
        FUNC10(lua,1); /* Discard field name pushed before. */

        /* Handle set reply. */
        FUNC13(lua,"set");
        FUNC8(lua,-2);
        t = FUNC19(lua,-1);
        if (t == LUA_TTABLE) {
            int setlen = 0;
            void *replylen = FUNC3(c);
            FUNC11(lua); /* Use nil to start iteration. */
            while (FUNC9(lua,-2)) {
                /* Stack now: table, key, true */
                FUNC10(lua,1);               /* Discard the boolean value. */
                FUNC14(lua,-1);        /* Dup key before consuming. */
                FUNC28(c, lua); /* Return key. */
                /* Stack now: table, key. */
                setlen++;
            }
            FUNC27(c,replylen,setlen);
            FUNC10(lua,2);
            return;
        }
        FUNC10(lua,1); /* Discard field name pushed before. */

        /* Handle the array reply. */
        void *replylen = FUNC3(c);
        int j = 1, mbulklen = 0;
        while(1) {
            FUNC12(lua,j++);
            FUNC8(lua,-2);
            t = FUNC19(lua,-1);
            if (t == LUA_TNIL) {
                FUNC10(lua,1);
                break;
            }
            FUNC28(c, lua);
            mbulklen++;
        }
        FUNC25(c,replylen,mbulklen);
        break;
    default:
        FUNC6(c);
    }
    FUNC10(lua,1);
}