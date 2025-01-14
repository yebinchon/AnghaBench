
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIN (int,int) ;
 int memcmp (void*,void*,int ) ;

__attribute__((used)) static int keyCompare(void *pKey1, int nKey1, void *pKey2, int nKey2){
  int res;
  res = memcmp(pKey1, pKey2, MIN(nKey1, nKey2));
  if( res==0 ){
    res = nKey1 - nKey2;
  }
  return res;
}
