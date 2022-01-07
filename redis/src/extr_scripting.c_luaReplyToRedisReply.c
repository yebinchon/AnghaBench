
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int sds ;
typedef int lua_State ;
struct TYPE_18__ {size_t resp; } ;
typedef TYPE_2__ client ;
struct TYPE_20__ {TYPE_1__* lua_client; } ;
struct TYPE_19__ {int * null; int cone; } ;
struct TYPE_17__ {int resp; } ;



 int LUA_TNIL ;



 int addReply (TYPE_2__*,int ) ;
 int addReplyBool (TYPE_2__*,int ) ;
 int addReplyBulkCBuffer (TYPE_2__*,char*,int ) ;
 void* addReplyDeferredLen (TYPE_2__*) ;
 int addReplyDouble (TYPE_2__*,scalar_t__) ;
 int addReplyLongLong (TYPE_2__*,long long) ;
 int addReplyNull (TYPE_2__*) ;
 int addReplySds (TYPE_2__*,int ) ;
 int lua_gettable (int *,int) ;
 int lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushstring (int *,char*) ;
 int lua_pushvalue (int *,int) ;
 int lua_strlen (int *,int) ;
 int lua_toboolean (int *,int) ;
 scalar_t__ lua_tonumber (int *,int) ;
 scalar_t__ lua_tostring (int *,int) ;
 int lua_type (int *,int) ;
 int sdscatprintf (int ,char*,int ) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdsmapchars (int ,char*,char*,int) ;
 int sdsnew (scalar_t__) ;
 TYPE_7__ server ;
 int setDeferredArrayLen (TYPE_2__*,void*,int) ;
 int setDeferredMapLen (TYPE_2__*,void*,int) ;
 int setDeferredSetLen (TYPE_2__*,void*,int) ;
 TYPE_3__ shared ;

void luaReplyToRedisReply(client *c, lua_State *lua) {
    int t = lua_type(lua,-1);

    switch(t) {
    case 129:
        addReplyBulkCBuffer(c,(char*)lua_tostring(lua,-1),lua_strlen(lua,-1));
        break;
    case 131:
        if (server.lua_client->resp == 2)
            addReply(c,lua_toboolean(lua,-1) ? shared.cone :
                                               shared.null[c->resp]);
        else
            addReplyBool(c,lua_toboolean(lua,-1));
        break;
    case 130:
        addReplyLongLong(c,(long long)lua_tonumber(lua,-1));
        break;
    case 128:






        lua_pushstring(lua,"err");
        lua_gettable(lua,-2);
        t = lua_type(lua,-1);
        if (t == 129) {
            sds err = sdsnew(lua_tostring(lua,-1));
            sdsmapchars(err,"\r\n","  ",2);
            addReplySds(c,sdscatprintf(sdsempty(),"-%s\r\n",err));
            sdsfree(err);
            lua_pop(lua,2);
            return;
        }
        lua_pop(lua,1);


        lua_pushstring(lua,"ok");
        lua_gettable(lua,-2);
        t = lua_type(lua,-1);
        if (t == 129) {
            sds ok = sdsnew(lua_tostring(lua,-1));
            sdsmapchars(ok,"\r\n","  ",2);
            addReplySds(c,sdscatprintf(sdsempty(),"+%s\r\n",ok));
            sdsfree(ok);
            lua_pop(lua,2);
            return;
        }
        lua_pop(lua,1);


        lua_pushstring(lua,"double");
        lua_gettable(lua,-2);
        t = lua_type(lua,-1);
        if (t == 130) {
            addReplyDouble(c,lua_tonumber(lua,-1));
            lua_pop(lua,2);
            return;
        }
        lua_pop(lua,1);


        lua_pushstring(lua,"map");
        lua_gettable(lua,-2);
        t = lua_type(lua,-1);
        if (t == 128) {
            int maplen = 0;
            void *replylen = addReplyDeferredLen(c);
            lua_pushnil(lua);
            while (lua_next(lua,-2)) {

                luaReplyToRedisReply(c, lua);
                lua_pushvalue(lua,-1);
                luaReplyToRedisReply(c, lua);

                maplen++;
            }
            setDeferredMapLen(c,replylen,maplen);
            lua_pop(lua,2);
            return;
        }
        lua_pop(lua,1);


        lua_pushstring(lua,"set");
        lua_gettable(lua,-2);
        t = lua_type(lua,-1);
        if (t == 128) {
            int setlen = 0;
            void *replylen = addReplyDeferredLen(c);
            lua_pushnil(lua);
            while (lua_next(lua,-2)) {

                lua_pop(lua,1);
                lua_pushvalue(lua,-1);
                luaReplyToRedisReply(c, lua);

                setlen++;
            }
            setDeferredSetLen(c,replylen,setlen);
            lua_pop(lua,2);
            return;
        }
        lua_pop(lua,1);


        void *replylen = addReplyDeferredLen(c);
        int j = 1, mbulklen = 0;
        while(1) {
            lua_pushnumber(lua,j++);
            lua_gettable(lua,-2);
            t = lua_type(lua,-1);
            if (t == LUA_TNIL) {
                lua_pop(lua,1);
                break;
            }
            luaReplyToRedisReply(c, lua);
            mbulklen++;
        }
        setDeferredArrayLen(c,replylen,mbulklen);
        break;
    default:
        addReplyNull(c);
    }
    lua_pop(lua,1);
}
