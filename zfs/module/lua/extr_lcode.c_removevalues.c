
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FuncState ;


 int NO_JUMP ;
 int NO_REG ;
 int getjump (int *,int) ;
 int patchtestreg (int *,int,int ) ;

__attribute__((used)) static void removevalues (FuncState *fs, int list) {
  for (; list != NO_JUMP; list = getjump(fs, list))
      patchtestreg(fs, list, NO_REG);
}
