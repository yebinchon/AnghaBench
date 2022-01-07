
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_7__ {char* ptr; } ;
typedef TYPE_1__ robj ;
typedef int lua_State ;
typedef int dictEntry ;
typedef int client ;
struct TYPE_8__ {int lua_scripts_mem; int * lua_client; int lua_scripts; } ;


 int DICT_OK ;
 int addReplyErrorFormat (int *,char*,int ) ;
 int dictAdd (int ,char*,TYPE_1__*) ;
 int * dictFind (int ,char*) ;
 char* dictGetKey (int *) ;
 scalar_t__ getStringObjectSdsUsedMemory (TYPE_1__*) ;
 int incrRefCount (TYPE_1__*) ;
 scalar_t__ luaL_loadbuffer (int *,char*,int,char*) ;
 scalar_t__ lua_pcall (int *,int ,int ,int ) ;
 int lua_pop (int *,int) ;
 int lua_tostring (int *,int) ;
 scalar_t__ sdsZmallocSize (char*) ;
 char* sdscat (char*,char*) ;
 char* sdscatlen (char*,char*,int) ;
 char* sdsempty () ;
 int sdsfree (char*) ;
 int sdslen (char*) ;
 char* sdsnewlen (char*,int) ;
 TYPE_2__ server ;
 int serverAssertWithInfo (int *,int *,int) ;
 int sha1hex (char*,char*,int) ;

sds luaCreateFunction(client *c, lua_State *lua, robj *body) {
    char funcname[43];
    dictEntry *de;

    funcname[0] = 'f';
    funcname[1] = '_';
    sha1hex(funcname+2,body->ptr,sdslen(body->ptr));

    sds sha = sdsnewlen(funcname+2,40);
    if ((de = dictFind(server.lua_scripts,sha)) != ((void*)0)) {
        sdsfree(sha);
        return dictGetKey(de);
    }

    sds funcdef = sdsempty();
    funcdef = sdscat(funcdef,"function ");
    funcdef = sdscatlen(funcdef,funcname,42);
    funcdef = sdscatlen(funcdef,"() ",3);
    funcdef = sdscatlen(funcdef,body->ptr,sdslen(body->ptr));
    funcdef = sdscatlen(funcdef,"\nend",4);

    if (luaL_loadbuffer(lua,funcdef,sdslen(funcdef),"@user_script")) {
        if (c != ((void*)0)) {
            addReplyErrorFormat(c,
                "Error compiling script (new function): %s\n",
                lua_tostring(lua,-1));
        }
        lua_pop(lua,1);
        sdsfree(sha);
        sdsfree(funcdef);
        return ((void*)0);
    }
    sdsfree(funcdef);

    if (lua_pcall(lua,0,0,0)) {
        if (c != ((void*)0)) {
            addReplyErrorFormat(c,"Error running script (new function): %s\n",
                lua_tostring(lua,-1));
        }
        lua_pop(lua,1);
        sdsfree(sha);
        return ((void*)0);
    }




    int retval = dictAdd(server.lua_scripts,sha,body);
    serverAssertWithInfo(c ? c : server.lua_client,((void*)0),retval == DICT_OK);
    server.lua_scripts_mem += sdsZmallocSize(sha) + getStringObjectSdsUsedMemory(body);
    incrRefCount(body);
    return sha;
}
