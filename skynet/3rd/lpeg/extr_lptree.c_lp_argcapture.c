
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int key; } ;
typedef TYPE_1__ TTree ;


 int Carg ;
 int SHRT_MAX ;
 int luaL_argcheck (int *,int,int,char*) ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 TYPE_1__* newemptycap (int *,int ) ;

__attribute__((used)) static int lp_argcapture (lua_State *L) {
  int n = (int)luaL_checkinteger(L, 1);
  TTree *tree = newemptycap(L, Carg);
  tree->key = n;
  luaL_argcheck(L, 0 < n && n <= SHRT_MAX, 1, "invalid argument index");
  return 1;
}
