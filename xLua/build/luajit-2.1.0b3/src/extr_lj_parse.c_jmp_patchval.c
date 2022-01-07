
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FuncState ;
typedef int BCReg ;
typedef scalar_t__ BCPos ;


 scalar_t__ NO_JMP ;
 scalar_t__ jmp_next (int *,scalar_t__) ;
 int jmp_patchins (int *,scalar_t__,scalar_t__) ;
 scalar_t__ jmp_patchtestreg (int *,scalar_t__,int ) ;

__attribute__((used)) static void jmp_patchval(FuncState *fs, BCPos list, BCPos vtarget,
    BCReg reg, BCPos dtarget)
{
  while (list != NO_JMP) {
    BCPos next = jmp_next(fs, list);
    if (jmp_patchtestreg(fs, list, reg))
      jmp_patchins(fs, list, vtarget);
    else
      jmp_patchins(fs, list, dtarget);
    list = next;
  }
}
