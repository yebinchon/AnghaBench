
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ls; TYPE_1__* f; } ;
struct TYPE_4__ {int * code; } ;
typedef int Instruction ;
typedef TYPE_2__ FuncState ;


 scalar_t__ MAXARG_sBx ;
 int NO_JUMP ;
 int SETARG_sBx (int ,int) ;
 scalar_t__ abs (int) ;
 int luaX_syntaxerror (int ,char*) ;
 int lua_assert (int) ;

__attribute__((used)) static void fixjump (FuncState *fs, int pc, int dest) {
  Instruction *jmp = &fs->f->code[pc];
  int offset = dest - (pc + 1);
  lua_assert(dest != NO_JUMP);
  if (abs(offset) > MAXARG_sBx)
    luaX_syntaxerror(fs->ls, "control structure too long");
  SETARG_sBx(*jmp, offset);
}
