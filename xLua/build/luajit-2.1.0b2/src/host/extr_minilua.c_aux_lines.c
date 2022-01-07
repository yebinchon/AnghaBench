
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int io_readline ;
 int lua_pushboolean (int *,int) ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_pushvalue (int *,int) ;

__attribute__((used)) static void aux_lines(lua_State*L,int idx,int toclose){
lua_pushvalue(L,idx);
lua_pushboolean(L,toclose);
lua_pushcclosure(L,io_readline,2);
}
