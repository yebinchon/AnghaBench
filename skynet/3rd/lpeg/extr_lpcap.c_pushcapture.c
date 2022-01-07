
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


typedef int lua_State ;
typedef int luaL_Buffer ;
struct TYPE_20__ {TYPE_15__* cap; int ptop; scalar_t__ s; int * L; } ;
struct TYPE_19__ {int idx; } ;
struct TYPE_18__ {int idx; } ;
struct TYPE_17__ {int idx; scalar_t__ s; } ;
typedef TYPE_3__ CapState ;
 int FIXEDARGS ;
 int assert (int ) ;
 int backrefcap (TYPE_3__*) ;
 int captype (TYPE_15__*) ;
 int foldcap (TYPE_3__*) ;
 int functioncap (TYPE_3__*) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_checkstack (int *,int,char*) ;
 int luaL_error (int *,char*,int) ;
 int luaL_pushresult (int *) ;
 int lua_insert (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushvalue (int *,int ) ;
 int nextcap (TYPE_3__*) ;
 int numcap (TYPE_3__*) ;
 int pushluaval (TYPE_3__*) ;
 int pushnestedvalues (TYPE_3__*,int) ;
 int querycap (TYPE_3__*) ;
 int stringcap (int *,TYPE_3__*) ;
 int substcap (int *,TYPE_3__*) ;
 int tablecap (TYPE_3__*) ;

__attribute__((used)) static int pushcapture (CapState *cs) {
  lua_State *L = cs->L;
  luaL_checkstack(L, 4, "too many captures");
  switch (captype(cs->cap)) {
    case 134: {
      lua_pushinteger(L, cs->cap->s - cs->s + 1);
      cs->cap++;
      return 1;
    }
    case 139: {
      pushluaval(cs);
      cs->cap++;
      return 1;
    }
    case 141: {
      int arg = (cs->cap++)->idx;
      if (arg + FIXEDARGS > cs->ptop)
        return luaL_error(L, "reference to absent extra argument #%d", arg);
      lua_pushvalue(L, arg + FIXEDARGS);
      return 1;
    }
    case 131: {
      int k = pushnestedvalues(cs, 1);
      lua_insert(L, -k);
      return k;
    }
    case 132: {
      lua_pushvalue(L, (cs->cap++)->idx);
      return 1;
    }
    case 130: {
      luaL_Buffer b;
      luaL_buffinit(L, &b);
      stringcap(&b, cs);
      luaL_pushresult(&b);
      return 1;
    }
    case 129: {
      luaL_Buffer b;
      luaL_buffinit(L, &b);
      substcap(&b, cs);
      luaL_pushresult(&b);
      return 1;
    }
    case 136: {
      if (cs->cap->idx == 0)
        return pushnestedvalues(cs, 0);
      else {
        nextcap(cs);
        return 0;
      }
    }
    case 140: return backrefcap(cs);
    case 128: return tablecap(cs);
    case 137: return functioncap(cs);
    case 135: return numcap(cs);
    case 133: return querycap(cs);
    case 138: return foldcap(cs);
    default: assert(0); return 0;
  }
}
