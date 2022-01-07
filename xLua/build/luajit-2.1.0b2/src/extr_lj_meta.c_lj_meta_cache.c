
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int cTValue ;
struct TYPE_4__ {int nomm; } ;
typedef unsigned int MMS ;
typedef TYPE_1__ GCtab ;
typedef int GCstr ;


 unsigned int MM_FAST ;
 int * lj_tab_getstr (TYPE_1__*,int *) ;
 int lua_assert (int) ;
 scalar_t__ tvisnil (int *) ;

cTValue *lj_meta_cache(GCtab *mt, MMS mm, GCstr *name)
{
  cTValue *mo = lj_tab_getstr(mt, name);
  lua_assert(mm <= MM_FAST);
  if (!mo || tvisnil(mo)) {
    mt->nomm |= (uint8_t)(1u<<mm);
    return ((void*)0);
  }
  return mo;
}
