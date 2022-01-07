
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_7__ {int metatable; } ;
typedef TYPE_2__ Table ;
struct TYPE_6__ {int lnglen; } ;
struct TYPE_8__ {TYPE_1__ u; int shrlen; } ;
typedef int TValue ;
typedef int StkId ;





 int TM_LEN ;
 int * fasttm (int *,int ,int ) ;
 TYPE_2__* hvalue (int const*) ;
 int luaG_typeerror (int *,int const*,char*) ;
 int luaH_getn (TYPE_2__*) ;
 int luaT_callTM (int *,int const*,int const*,int const*,int ,int) ;
 int * luaT_gettmbyobj (int *,int const*,int ) ;
 int setivalue (int ,int ) ;
 TYPE_3__* tsvalue (int const*) ;
 int ttisnil (int const*) ;
 int ttype (int const*) ;

void luaV_objlen (lua_State *L, StkId ra, const TValue *rb) {
  const TValue *tm;
  switch (ttype(rb)) {
    case 128: {
      Table *h = hvalue(rb);
      tm = fasttm(L, h->metatable, TM_LEN);
      if (tm) break;
      setivalue(ra, luaH_getn(h));
      return;
    }
    case 129: {
      setivalue(ra, tsvalue(rb)->shrlen);
      return;
    }
    case 130: {
      setivalue(ra, tsvalue(rb)->u.lnglen);
      return;
    }
    default: {
      tm = luaT_gettmbyobj(L, rb, TM_LEN);
      if (ttisnil(tm))
        luaG_typeerror(L, rb, "get length of");
      break;
    }
  }
  luaT_callTM(L, tm, rb, rb, ra, 1);
}
