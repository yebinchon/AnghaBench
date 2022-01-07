
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OpCode ;
typedef int FuncState ;


 int CREATE_ABC (int ,int,int,int) ;
 int MAXARG_A ;
 int MAXARG_B ;
 int MAXARG_C ;
 scalar_t__ OpArgN ;
 scalar_t__ getBMode (int ) ;
 scalar_t__ getCMode (int ) ;
 scalar_t__ getOpMode (int ) ;
 scalar_t__ iABC ;
 int luaK_code (int *,int ) ;
 int lua_assert (int) ;

int luaK_codeABC (FuncState *fs, OpCode o, int a, int b, int c) {
  lua_assert(getOpMode(o) == iABC);
  lua_assert(getBMode(o) != OpArgN || b == 0);
  lua_assert(getCMode(o) != OpArgN || c == 0);
  lua_assert(a <= MAXARG_A && b <= MAXARG_B && c <= MAXARG_C);
  return luaK_code(fs, CREATE_ABC(o, a, b, c));
}
