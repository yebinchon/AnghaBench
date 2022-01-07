
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int Table ;
struct TYPE_6__ {int * tmname; int ** mt; } ;
struct TYPE_5__ {int * metatable; } ;
struct TYPE_4__ {int * metatable; } ;
typedef int TValue ;
typedef size_t TMS ;


 TYPE_3__* G (int *) ;


 TYPE_2__* hvalue (int const*) ;
 int const* luaH_getshortstr (int *,int ) ;
 int const* luaO_nilobject ;
 size_t ttnov (int const*) ;
 TYPE_1__* uvalue (int const*) ;

const TValue *luaT_gettmbyobj (lua_State *L, const TValue *o, TMS event) {
  Table *mt;
  switch (ttnov(o)) {
    case 129:
      mt = hvalue(o)->metatable;
      break;
    case 128:
      mt = uvalue(o)->metatable;
      break;
    default:
      mt = G(L)->mt[ttnov(o)];
  }
  return (mt ? luaH_getshortstr(mt, G(L)->tmname[event]) : luaO_nilobject);
}
