
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;


 int memset (void*,int ,size_t) ;
 void* sqlite3_malloc64 (scalar_t__) ;

__attribute__((used)) static void *fuzzMalloc(sqlite3_int64 nByte){
  void *pRet = sqlite3_malloc64(nByte);
  if( pRet ){
    memset(pRet, 0, (size_t)nByte);
  }
  return pRet;
}
