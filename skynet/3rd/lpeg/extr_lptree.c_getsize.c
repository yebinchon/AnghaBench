
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TTree ;
typedef int Pattern ;


 int lua_rawlen (int *,int) ;

__attribute__((used)) static int getsize (lua_State *L, int idx) {
  return (lua_rawlen(L, idx) - sizeof(Pattern)) / sizeof(TTree) + 1;
}
