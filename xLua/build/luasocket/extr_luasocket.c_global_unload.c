
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int socket_close () ;

__attribute__((used)) static int global_unload(lua_State *L) {
    (void) L;
    socket_close();
    return 0;
}
