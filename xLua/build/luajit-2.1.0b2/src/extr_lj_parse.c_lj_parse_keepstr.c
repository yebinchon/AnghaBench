
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {TYPE_1__* fs; int * L; } ;
struct TYPE_4__ {int kt; } ;
typedef int TValue ;
typedef TYPE_2__ LexState ;
typedef int GCstr ;


 int lj_gc_check (int *) ;
 int * lj_str_new (int *,char const*,size_t) ;
 int * lj_tab_setstr (int *,int ,int *) ;
 int setboolV (int *,int) ;
 scalar_t__ tvisnil (int *) ;

GCstr *lj_parse_keepstr(LexState *ls, const char *str, size_t len)
{

  lua_State *L = ls->L;
  GCstr *s = lj_str_new(L, str, len);
  TValue *tv = lj_tab_setstr(L, ls->fs->kt, s);
  if (tvisnil(tv)) setboolV(tv, 1);
  lj_gc_check(L);
  return s;
}
