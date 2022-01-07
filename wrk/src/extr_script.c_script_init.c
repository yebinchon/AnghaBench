
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * L; } ;
typedef TYPE_1__ thread ;
typedef int lua_State ;


 int lua_call (int *,int,int ) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 int lua_newtable (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawseti (int *,int,int) ;
 int lua_setfield (int *,int,char*) ;
 int script_push_thread (int *,TYPE_1__*) ;

void script_init(lua_State *L, thread *t, int argc, char **argv) {
    lua_getglobal(t->L, "wrk");

    script_push_thread(t->L, t);
    lua_setfield(t->L, -2, "thread");

    lua_getglobal(L, "wrk");
    lua_getfield(L, -1, "setup");
    script_push_thread(L, t);
    lua_call(L, 1, 0);
    lua_pop(L, 1);

    lua_getfield(t->L, -1, "init");
    lua_newtable(t->L);
    for (int i = 0; i < argc; i++) {
        lua_pushstring(t->L, argv[i]);
        lua_rawseti(t->L, -2, i);
    }
    lua_call(t->L, 1, 0);
    lua_pop(t->L, 1);
}
