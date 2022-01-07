
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memset (int *,int ,int) ;
 scalar_t__ realloc (int *,int) ;
 void* testMalloc (int) ;

void *testRealloc(void *ptr, int n){
  if( ptr ){
    u8 *p = (u8*)ptr - 8;
    int nOrig = *(int*)p;
    p = (u8*)realloc(p, n+8);
    if( nOrig<n ){
      memset(&p[8+nOrig], 0, n-nOrig);
    }
    *(int*)p = n;
    return (void*)&p[8];
  }
  return testMalloc(n);
}
