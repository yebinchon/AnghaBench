
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushthread (int *) ;
 int timing_yield (int *) ;

__attribute__((used)) static int
lyield(lua_State *L) {
 lua_pushthread(L);

 return timing_yield(L);
}
