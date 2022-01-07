
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int env; } ;
typedef TYPE_1__ lua_State ;
typedef int ls ;
struct TYPE_15__ {int firstline; } ;
struct TYPE_14__ {char const* p; char const* pe; int c; int level; int * chunkname; TYPE_1__* L; } ;
typedef TYPE_2__ LexState ;
typedef int GCtab ;
typedef int GCstr ;
typedef TYPE_3__ GCproto ;
typedef int GCfunc ;
typedef int BCLine ;


 int BCDUMP_F_BE ;
 int BCDUMP_F_STRIP ;
 int LJ_BE ;
 TYPE_3__* lj_bcread_proto (TYPE_2__*) ;
 int * lj_func_newL_empty (TYPE_1__*,TYPE_3__*,int ) ;
 int * lj_str_new (TYPE_1__*,char const*,int) ;
 int lj_tab_setstr (TYPE_1__*,int *,int *) ;
 int memset (TYPE_2__*,int ,int) ;
 int setfuncV (TYPE_1__*,int ,int *) ;
 int tabref (int ) ;

__attribute__((used)) static const uint8_t *lib_read_lfunc(lua_State *L, const uint8_t *p, GCtab *tab)
{
  int len = *p++;
  GCstr *name = lj_str_new(L, (const char *)p, len);
  LexState ls;
  GCproto *pt;
  GCfunc *fn;
  memset(&ls, 0, sizeof(ls));
  ls.L = L;
  ls.p = (const char *)(p+len);
  ls.pe = (const char *)~(uintptr_t)0;
  ls.c = -1;
  ls.level = (BCDUMP_F_STRIP|(LJ_BE*BCDUMP_F_BE));
  ls.chunkname = name;
  pt = lj_bcread_proto(&ls);
  pt->firstline = ~(BCLine)0;
  fn = lj_func_newL_empty(L, pt, tabref(L->env));

  setfuncV(L, lj_tab_setstr(L, tab, name), fn);
  return (const uint8_t *)ls.p;
}
