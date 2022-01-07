
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;


 int memset (void*,int ,int ) ;
 void* sqlite3_malloc64 (int ) ;

__attribute__((used)) static void *fts3MallocZero(sqlite3_int64 nByte){
  void *pRet = sqlite3_malloc64(nByte);
  if( pRet ) memset(pRet, 0, nByte);
  return pRet;
}
