
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* f; } ;
struct TYPE_5__ {int * code; } ;
typedef TYPE_2__ FuncState ;


 int GETARG_A (int ) ;
 scalar_t__ GET_OPCODE (int ) ;
 int NO_JUMP ;
 scalar_t__ OP_JMP ;
 int SETARG_A (int ,int) ;
 int getjump (TYPE_2__*,int) ;
 int lua_assert (int) ;

void luaK_patchclose (FuncState *fs, int list, int level) {
  level++;
  for (; list != NO_JUMP; list = getjump(fs, list)) {
    lua_assert(GET_OPCODE(fs->f->code[list]) == OP_JMP &&
                (GETARG_A(fs->f->code[list]) == 0 ||
                 GETARG_A(fs->f->code[list]) >= level));
    SETARG_A(fs->f->code[list], level);
  }
}
