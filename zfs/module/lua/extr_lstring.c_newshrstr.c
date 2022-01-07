
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nuse; int size; int ** hash; } ;
typedef TYPE_1__ stringtable ;
typedef int lua_State ;
struct TYPE_4__ {TYPE_1__ strt; } ;
typedef int TString ;
typedef int GCObject ;


 TYPE_2__* G (int *) ;
 int LUA_TSHRSTR ;
 int MAX_INT ;
 scalar_t__ cast (int ,int) ;
 int * createstrobj (int *,char const*,size_t,int ,unsigned int,int **) ;
 size_t lmod (unsigned int,int) ;
 int lu_int32 ;
 int luaS_resize (int *,int) ;

__attribute__((used)) static TString *newshrstr (lua_State *L, const char *str, size_t l,
                                       unsigned int h) {
  GCObject **list;
  stringtable *tb = &G(L)->strt;
  TString *s;
  if (tb->nuse >= cast(lu_int32, tb->size) && tb->size <= MAX_INT/2)
    luaS_resize(L, tb->size*2);
  list = &tb->hash[lmod(h, tb->size)];
  s = createstrobj(L, str, l, LUA_TSHRSTR, h, list);
  tb->nuse++;
  return s;
}
