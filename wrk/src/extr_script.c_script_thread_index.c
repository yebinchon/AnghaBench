
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; } ;
typedef TYPE_1__ thread ;
typedef int lua_State ;


 TYPE_1__* checkthread (int *) ;
 int lua_pushcfunction (int *,int ) ;
 char* lua_tostring (int *,int) ;
 int script_addr_clone (int *,int ) ;
 int script_thread_get ;
 int script_thread_set ;
 int script_thread_stop ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static int script_thread_index(lua_State *L) {
    thread *t = checkthread(L);
    const char *key = lua_tostring(L, 2);
    if (!strcmp("get", key)) lua_pushcfunction(L, script_thread_get);
    if (!strcmp("set", key)) lua_pushcfunction(L, script_thread_set);
    if (!strcmp("stop", key)) lua_pushcfunction(L, script_thread_stop);
    if (!strcmp("addr", key)) script_addr_clone(L, t->addr);
    return 1;
}
