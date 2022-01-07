
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int lua_State ;
struct TYPE_3__ {int * gcroot; } ;
typedef TYPE_1__ global_State ;
typedef int GCstr ;


 TYPE_1__* G (int *) ;
 size_t GCROOT_MMNAME ;
 char* MMDEF (int ) ;
 int MMNAME ;
 int * lj_str_new (int *,char const*,size_t) ;
 int obj2gco (int *) ;
 int setgcref (int ,int ) ;

void lj_meta_init(lua_State *L)
{

  const char *metanames = MMDEF(MMNAME);

  global_State *g = G(L);
  const char *p, *q;
  uint32_t mm;
  for (mm = 0, p = metanames; *p; mm++, p = q) {
    GCstr *s;
    for (q = p+2; *q && *q != '_'; q++) ;
    s = lj_str_new(L, p, (size_t)(q-p));

    setgcref(g->gcroot[GCROOT_MMNAME+mm], obj2gco(s));
  }
}
