
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushvalue (int *,int) ;
 int timing_resume (int *) ;

__attribute__((used)) static int
lresume(lua_State *L) {
 lua_pushvalue(L,1);

 return timing_resume(L);
}
