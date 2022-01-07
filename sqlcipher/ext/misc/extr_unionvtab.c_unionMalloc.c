
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int memset (void*,int ,size_t) ;
 void* sqlite3_malloc64 (scalar_t__) ;

__attribute__((used)) static void *unionMalloc(int *pRc, sqlite3_int64 nByte){
  void *pRet;
  assert( nByte>0 );
  if( *pRc==SQLITE_OK ){
    pRet = sqlite3_malloc64(nByte);
    if( pRet ){
      memset(pRet, 0, (size_t)nByte);
    }else{
      *pRc = SQLITE_NOMEM;
    }
  }else{
    pRet = 0;
  }
  return pRet;
}
