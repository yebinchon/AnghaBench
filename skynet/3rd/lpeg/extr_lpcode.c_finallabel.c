
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Instruction ;


 int finaltarget (int *,int ) ;
 int target (int *,int) ;

__attribute__((used)) static int finallabel (Instruction *code, int i) {
  return finaltarget(code, target(code, i));
}
