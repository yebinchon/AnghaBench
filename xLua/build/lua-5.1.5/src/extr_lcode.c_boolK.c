
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TValue ;
typedef int FuncState ;


 int addk (int *,int *,int *) ;
 int setbvalue (int *,int) ;

__attribute__((used)) static int boolK (FuncState *fs, int b) {
  TValue o;
  setbvalue(&o, b);
  return addk(fs, &o, &o);
}
