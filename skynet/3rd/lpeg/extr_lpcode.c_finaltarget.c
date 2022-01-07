
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ code; } ;
struct TYPE_6__ {TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;


 scalar_t__ IJmp ;
 int target (TYPE_2__*,int) ;

__attribute__((used)) static int finaltarget (Instruction *code, int i) {
  while (code[i].i.code == IJmp)
    i = target(code, i);
  return i;
}
