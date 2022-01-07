
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OpCode ;
typedef int FuncState ;


 int CREATE_ABx (int ,int,unsigned int) ;
 int MAXARG_A ;
 unsigned int MAXARG_Bx ;
 scalar_t__ OpArgN ;
 scalar_t__ getCMode (int ) ;
 scalar_t__ getOpMode (int ) ;
 scalar_t__ iABx ;
 scalar_t__ iAsBx ;
 int luaK_code (int *,int ) ;
 int lua_assert (int) ;

int luaK_codeABx (FuncState *fs, OpCode o, int a, unsigned int bc) {
  lua_assert(getOpMode(o) == iABx || getOpMode(o) == iAsBx);
  lua_assert(getCMode(o) == OpArgN);
  lua_assert(a <= MAXARG_A && bc <= MAXARG_Bx);
  return luaK_code(fs, CREATE_ABx(o, a, bc));
}
