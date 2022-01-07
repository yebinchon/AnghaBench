
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
typedef int cTValue ;
struct TYPE_4__ {int metatable; } ;
struct TYPE_3__ {int metatable; } ;
typedef int MMS ;
typedef int GCtab ;


 int G (int *) ;
 int basemt_obj (int ,int *) ;
 int * lj_tab_getstr (int *,int ) ;
 int mmname_str (int ,int ) ;
 int * niltv (int *) ;
 TYPE_2__* tabV (int *) ;
 int * tabref (int ) ;
 scalar_t__ tvistab (int *) ;
 scalar_t__ tvisudata (int *) ;
 TYPE_1__* udataV (int *) ;

cTValue *lj_meta_lookup(lua_State *L, cTValue *o, MMS mm)
{
  GCtab *mt;
  if (tvistab(o))
    mt = tabref(tabV(o)->metatable);
  else if (tvisudata(o))
    mt = tabref(udataV(o)->metatable);
  else
    mt = tabref(basemt_obj(G(L), o));
  if (mt) {
    cTValue *mo = lj_tab_getstr(mt, mmname_str(G(L), mm));
    if (mo)
      return mo;
  }
  return niltv(L);
}
