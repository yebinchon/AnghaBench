
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ptop; int valuecached; int L; } ;
typedef TYPE_1__ CapState ;


 int getfromktable (TYPE_1__*,int) ;
 int lua_replace (int ,int) ;

__attribute__((used)) static int updatecache (CapState *cs, int v) {
  int idx = cs->ptop + 1;
  if (v != cs->valuecached) {
    getfromktable(cs, v);
    lua_replace(cs->L, idx);
    cs->valuecached = v;
  }
  return idx;
}
