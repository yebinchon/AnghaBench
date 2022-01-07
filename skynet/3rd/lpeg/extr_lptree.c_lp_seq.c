
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {scalar_t__ tag; } ;
typedef TYPE_1__ TTree ;


 scalar_t__ TFalse ;
 int TSeq ;
 scalar_t__ TTrue ;
 TYPE_1__* getpatt (int *,int,int *) ;
 int lua_pushvalue (int *,int) ;
 int newroot2sib (int *,int ) ;

__attribute__((used)) static int lp_seq (lua_State *L) {
  TTree *tree1 = getpatt(L, 1, ((void*)0));
  TTree *tree2 = getpatt(L, 2, ((void*)0));
  if (tree1->tag == TFalse || tree2->tag == TTrue)
    lua_pushvalue(L, 1);
  else if (tree1->tag == TTrue)
    lua_pushvalue(L, 2);
  else
    newroot2sib(L, TSeq);
  return 1;
}
