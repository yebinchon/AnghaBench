
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int jpc; int pc; int lasttarget; } ;
typedef TYPE_1__ FuncState ;
typedef int BCPos ;


 int jmp_append (TYPE_1__*,int *,int ) ;

__attribute__((used)) static void jmp_tohere(FuncState *fs, BCPos list)
{
  fs->lasttarget = fs->pc;
  jmp_append(fs, &fs->jpc, list);
}
