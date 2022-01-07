
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FuncState ;
typedef scalar_t__ BCPos ;


 scalar_t__ NO_JMP ;
 scalar_t__ jmp_next (int *,scalar_t__) ;
 int jmp_patchins (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void jmp_append(FuncState *fs, BCPos *l1, BCPos l2)
{
  if (l2 == NO_JMP) {
    return;
  } else if (*l1 == NO_JMP) {
    *l1 = l2;
  } else {
    BCPos list = *l1;
    BCPos next;
    while ((next = jmp_next(fs, list)) != NO_JMP)
      list = next;
    jmp_patchins(fs, list, l2);
  }
}
