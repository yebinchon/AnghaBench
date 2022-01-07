
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_block {int len; } ;
typedef int lua_State ;


 int luaL_error (int *,char*,int,int) ;

__attribute__((used)) static inline void
invalid_stream_line(lua_State *L, struct read_block *rb, int line) {
 int len = rb->len;
 luaL_error(L, "Invalid serialize stream %d (line:%d)", len, line);
}
