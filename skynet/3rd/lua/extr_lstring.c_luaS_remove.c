
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nuse; int size; TYPE_3__** hash; } ;
typedef TYPE_2__ stringtable ;
typedef int lua_State ;
struct TYPE_9__ {TYPE_2__ strt; } ;
struct TYPE_6__ {TYPE_3__* hnext; } ;
struct TYPE_8__ {TYPE_1__ u; int hash; } ;
typedef TYPE_3__ TString ;


 TYPE_5__* G (int *) ;
 size_t lmod (int ,int ) ;

void luaS_remove (lua_State *L, TString *ts) {
  stringtable *tb = &G(L)->strt;
  TString **p = &tb->hash[lmod(ts->hash, tb->size)];
  while (*p != ts)
    p = &(*p)->u.hnext;
  *p = (*p)->u.hnext;
  tb->nuse--;
}
