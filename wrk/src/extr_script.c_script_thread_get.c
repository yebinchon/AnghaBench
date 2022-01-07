
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int L; } ;
typedef TYPE_1__ thread ;
typedef int lua_State ;


 TYPE_1__* checkthread (int *) ;
 int lua_getglobal (int ,char const*) ;
 int lua_pop (int ,int) ;
 char* lua_tostring (int *,int) ;
 int script_copy_value (int ,int *,int) ;

__attribute__((used)) static int script_thread_get(lua_State *L) {
    thread *t = checkthread(L);
    const char *key = lua_tostring(L, -1);
    lua_getglobal(t->L, key);
    script_copy_value(t->L, L, -1);
    lua_pop(t->L, 1);
    return 1;
}
