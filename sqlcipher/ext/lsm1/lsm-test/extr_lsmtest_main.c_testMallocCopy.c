
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,int) ;
 void* testMalloc (int) ;

void *testMallocCopy(void *pCopy, int nByte){
  void *pRet = testMalloc(nByte);
  memcpy(pRet, pCopy, nByte);
  return pRet;
}
