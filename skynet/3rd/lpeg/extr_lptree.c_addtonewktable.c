
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int addtoktable (int *,int) ;
 int mergektable (int *,int,int *) ;
 int newktable (int *,int) ;

__attribute__((used)) static int addtonewktable (lua_State *L, int p, int idx) {
  newktable(L, 1);
  if (p)
    mergektable(L, p, ((void*)0));
  return addtoktable(L, idx);
}
