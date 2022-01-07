
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct boxstm {int * obj; } ;
typedef int lua_State ;


 struct boxstm* lua_touserdata (int *,int) ;
 int stm_release (int *) ;

__attribute__((used)) static int
ldeletewriter(lua_State *L) {
 struct boxstm * box = lua_touserdata(L, 1);
 stm_release(box->obj);
 box->obj = ((void*)0);

 return 0;
}
