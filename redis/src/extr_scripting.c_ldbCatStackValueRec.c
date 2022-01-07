
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;
typedef int lua_State ;


 int LDB_MAX_VALUES_DEPTH ;
 int lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_toboolean (int *,int) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 int lua_tonumber (int *,int) ;
 void* lua_topointer (int *,int) ;
 int const lua_type (int *,int) ;
 int sdscat (int ,char*) ;
 int sdscatlen (int ,char*,int) ;
 int sdscatprintf (int ,char*,...) ;
 int sdscatrepr (int ,char*,size_t) ;
 int sdscatsds (int ,int ) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdslen (int ) ;
 int sdsrange (int ,int ,int) ;

sds ldbCatStackValueRec(sds s, lua_State *lua, int idx, int level) {
    int t = lua_type(lua,idx);

    if (level++ == LDB_MAX_VALUES_DEPTH)
        return sdscat(s,"<max recursion level reached! Nested table?>");

    switch(t) {
    case 131:
        {
        size_t strl;
        char *strp = (char*)lua_tolstring(lua,idx,&strl);
        s = sdscatrepr(s,strp,strl);
        }
        break;
    case 136:
        s = sdscat(s,lua_toboolean(lua,idx) ? "true" : "false");
        break;
    case 132:
        s = sdscatprintf(s,"%g",(double)lua_tonumber(lua,idx));
        break;
    case 133:
        s = sdscatlen(s,"nil",3);
        break;
    case 130:
        {
        int expected_index = 1;
        int is_array = 1;



        sds repr1 = sdsempty();
        sds repr2 = sdsempty();
        lua_pushnil(lua);
        while (lua_next(lua,idx-1)) {

            if (is_array &&
                (lua_type(lua,-2) != 132 ||
                 lua_tonumber(lua,-2) != expected_index)) is_array = 0;


            repr1 = ldbCatStackValueRec(repr1,lua,-1,level);
            repr1 = sdscatlen(repr1,"; ",2);

            repr2 = sdscatlen(repr2,"[",1);
            repr2 = ldbCatStackValueRec(repr2,lua,-2,level);
            repr2 = sdscatlen(repr2,"]=",2);
            repr2 = ldbCatStackValueRec(repr2,lua,-1,level);
            repr2 = sdscatlen(repr2,"; ",2);
            lua_pop(lua,1);
            expected_index++;
        }

        if (sdslen(repr1)) sdsrange(repr1,0,-3);
        if (sdslen(repr2)) sdsrange(repr2,0,-3);

        s = sdscatlen(s,"{",1);
        s = sdscatsds(s,is_array ? repr1 : repr2);
        s = sdscatlen(s,"}",1);
        sdsfree(repr1);
        sdsfree(repr2);
        }
        break;
    case 135:
    case 128:
    case 129:
    case 134:
        {
        const void *p = lua_topointer(lua,idx);
        char *typename = "unknown";
        if (t == 135) typename = "function";
        else if (t == 128) typename = "userdata";
        else if (t == 129) typename = "thread";
        else if (t == 134) typename = "light-userdata";
        s = sdscatprintf(s,"\"%s@%p\"",typename,p);
        }
        break;
    default:
        s = sdscat(s,"\"<unknown-lua-type>\"");
        break;
    }
    return s;
}
