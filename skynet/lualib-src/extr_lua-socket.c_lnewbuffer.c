
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_buffer {int * tail; int * head; scalar_t__ offset; scalar_t__ size; } ;
typedef int lua_State ;


 struct socket_buffer* lua_newuserdata (int *,int) ;

__attribute__((used)) static int
lnewbuffer(lua_State *L) {
 struct socket_buffer * sb = lua_newuserdata(L, sizeof(*sb));
 sb->size = 0;
 sb->offset = 0;
 sb->head = ((void*)0);
 sb->tail = ((void*)0);

 return 1;
}
