
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* addr; } ;
typedef TYPE_1__ thread ;
struct addrinfo {int dummy; } ;
typedef int lua_State ;
struct TYPE_7__ {int ai_addr; } ;


 struct addrinfo* checkaddr (int *) ;
 TYPE_1__* checkthread (int *) ;
 int luaL_error (int *,char*,int ) ;
 int luaL_typename (int *,int) ;
 char* lua_tostring (int *,int) ;
 int script_addr_copy (struct addrinfo*,TYPE_2__*) ;
 int strcmp (char*,char const*) ;
 int zfree (int ) ;
 TYPE_2__* zrealloc (TYPE_2__*,int) ;

__attribute__((used)) static int script_thread_newindex(lua_State *L) {
    thread *t = checkthread(L);
    const char *key = lua_tostring(L, -2);
    if (!strcmp("addr", key)) {
        struct addrinfo *addr = checkaddr(L);
        if (t->addr) zfree(t->addr->ai_addr);
        t->addr = zrealloc(t->addr, sizeof(*addr));
        script_addr_copy(addr, t->addr);
    } else {
        luaL_error(L, "cannot set '%s' on thread", luaL_typename(L, -1));
    }
    return 0;
}
