
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int cap; int key; } ;
typedef TYPE_1__ TTree ;


 int TCapture ;
 int addtonewktable (int *,int,int) ;
 TYPE_1__* newroot1sib (int *,int ) ;

__attribute__((used)) static int capture_aux (lua_State *L, int cap, int labelidx) {
  TTree *tree = newroot1sib(L, TCapture);
  tree->cap = cap;
  tree->key = (labelidx == 0) ? 0 : addtonewktable(L, 1, labelidx);
  return 1;
}
