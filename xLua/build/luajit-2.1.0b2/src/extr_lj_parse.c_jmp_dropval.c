
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FuncState ;
typedef scalar_t__ BCPos ;


 scalar_t__ NO_JMP ;
 int NO_REG ;
 scalar_t__ jmp_next (int *,scalar_t__) ;
 int jmp_patchtestreg (int *,scalar_t__,int ) ;

__attribute__((used)) static void jmp_dropval(FuncState *fs, BCPos list)
{
  for (; list != NO_JMP; list = jmp_next(fs, list))
    jmp_patchtestreg(fs, list, NO_REG);
}
