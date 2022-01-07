
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int i64 ;


 int ckptRead64 (int *) ;

__attribute__((used)) static i64 ckptGobble64(u32 *a, int *piIn){
  int iIn = *piIn;
  *piIn += 2;
  return ckptRead64(&a[iIn]);
}
