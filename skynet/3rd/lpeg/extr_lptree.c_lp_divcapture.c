
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int key; int cap; } ;
typedef TYPE_1__ TTree ;


 int Cfunction ;
 int Cnum ;
 int Cquery ;
 int Cstring ;




 int SHRT_MAX ;
 int TCapture ;
 int capture_aux (int *,int ,int) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_argerror (int *,int,char*) ;
 int lua_tointeger (int *,int) ;
 int lua_type (int *,int) ;
 TYPE_1__* newroot1sib (int *,int ) ;

__attribute__((used)) static int lp_divcapture (lua_State *L) {
  switch (lua_type(L, 2)) {
    case 131: return capture_aux(L, Cfunction, 2);
    case 128: return capture_aux(L, Cquery, 2);
    case 129: return capture_aux(L, Cstring, 2);
    case 130: {
      int n = lua_tointeger(L, 2);
      TTree *tree = newroot1sib(L, TCapture);
      luaL_argcheck(L, 0 <= n && n <= SHRT_MAX, 1, "invalid number");
      tree->cap = Cnum;
      tree->key = n;
      return 1;
    }
    default: return luaL_argerror(L, 2, "invalid replacement value");
  }
}
