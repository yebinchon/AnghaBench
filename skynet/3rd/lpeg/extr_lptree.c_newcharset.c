
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int tag; } ;
typedef TYPE_1__ TTree ;


 int CHARSETSIZE ;
 int TSet ;
 scalar_t__ bytes2slots (int ) ;
 size_t i ;
 int loopset (size_t,scalar_t__) ;
 TYPE_1__* newtree (int *,scalar_t__) ;
 scalar_t__* treebuffer (TYPE_1__*) ;

__attribute__((used)) static TTree *newcharset (lua_State *L) {
  TTree *tree = newtree(L, bytes2slots(CHARSETSIZE) + 1);
  tree->tag = TSet;
  loopset(i, treebuffer(tree)[i] = 0);
  return tree;
}
