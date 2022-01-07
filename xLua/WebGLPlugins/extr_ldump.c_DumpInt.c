
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DumpState ;


 int DumpVar (int,int *) ;

__attribute__((used)) static void DumpInt (int x, DumpState *D) {
  DumpVar(x, D);
}
