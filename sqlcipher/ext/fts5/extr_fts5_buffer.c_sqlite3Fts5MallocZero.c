
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memset (void*,int ,size_t) ;
 void* sqlite3_malloc64 (scalar_t__) ;

void *sqlite3Fts5MallocZero(int *pRc, sqlite3_int64 nByte){
  void *pRet = 0;
  if( *pRc==SQLITE_OK ){
    pRet = sqlite3_malloc64(nByte);
    if( pRet==0 ){
      if( nByte>0 ) *pRc = SQLITE_NOMEM;
    }else{
      memset(pRet, 0, (size_t)nByte);
    }
  }
  return pRet;
}
