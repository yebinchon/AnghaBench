
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int TTree ;


 int * auxemptycap (int ,int) ;
 int newtree (int *,int) ;

__attribute__((used)) static TTree *newemptycap (lua_State *L, int cap) {
  return auxemptycap(newtree(L, 2), cap);
}
