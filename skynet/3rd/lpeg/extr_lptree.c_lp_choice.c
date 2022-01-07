
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_10__ {int* cs; } ;
struct TYPE_9__ {scalar_t__ tag; } ;
typedef TYPE_1__ TTree ;
typedef TYPE_2__ Charset ;


 int TChoice ;
 scalar_t__ TFalse ;
 TYPE_1__* getpatt (int *,int,int *) ;
 size_t i ;
 int loopset (size_t,int) ;
 int lua_pushvalue (int *,int) ;
 TYPE_1__* newcharset (int *) ;
 int newroot2sib (int *,int ) ;
 scalar_t__ nofail (TYPE_1__*) ;
 scalar_t__ tocharset (TYPE_1__*,TYPE_2__*) ;
 int* treebuffer (TYPE_1__*) ;

__attribute__((used)) static int lp_choice (lua_State *L) {
  Charset st1, st2;
  TTree *t1 = getpatt(L, 1, ((void*)0));
  TTree *t2 = getpatt(L, 2, ((void*)0));
  if (tocharset(t1, &st1) && tocharset(t2, &st2)) {
    TTree *t = newcharset(L);
    loopset(i, treebuffer(t)[i] = st1.cs[i] | st2.cs[i]);
  }
  else if (nofail(t1) || t2->tag == TFalse)
    lua_pushvalue(L, 1);
  else if (t1->tag == TFalse)
    lua_pushvalue(L, 2);
  else
    newroot2sib(L, TChoice);
  return 1;
}
