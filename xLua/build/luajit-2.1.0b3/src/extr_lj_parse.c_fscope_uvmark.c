
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nactvar; int flags; struct TYPE_5__* prev; } ;
struct TYPE_4__ {TYPE_2__* bl; } ;
typedef TYPE_1__ FuncState ;
typedef TYPE_2__ FuncScope ;
typedef scalar_t__ BCReg ;


 int FSCOPE_UPVAL ;

__attribute__((used)) static void fscope_uvmark(FuncState *fs, BCReg level)
{
  FuncScope *bl;
  for (bl = fs->bl; bl && bl->nactvar > level; bl = bl->prev)
    ;
  if (bl)
    bl->flags |= FSCOPE_UPVAL;
}
