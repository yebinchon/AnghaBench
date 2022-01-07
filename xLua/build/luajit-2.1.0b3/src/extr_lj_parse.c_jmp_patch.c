
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pc; } ;
typedef TYPE_1__ FuncState ;
typedef scalar_t__ BCPos ;


 int NO_REG ;
 int jmp_patchval (TYPE_1__*,scalar_t__,scalar_t__,int ,scalar_t__) ;
 int jmp_tohere (TYPE_1__*,scalar_t__) ;
 int lua_assert (int) ;

__attribute__((used)) static void jmp_patch(FuncState *fs, BCPos list, BCPos target)
{
  if (target == fs->pc) {
    jmp_tohere(fs, list);
  } else {
    lua_assert(target < fs->pc);
    jmp_patchval(fs, list, target, NO_REG, target);
  }
}
