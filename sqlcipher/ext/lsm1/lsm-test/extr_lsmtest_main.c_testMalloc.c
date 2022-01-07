
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ malloc (int) ;
 int memset (int *,int ,int) ;

void *testMalloc(int n){
  u8 *p = (u8*)malloc(n + 8);
  memset(p, 0, n+8);
  *(int*)p = n;
  return (void*)&p[8];
}
