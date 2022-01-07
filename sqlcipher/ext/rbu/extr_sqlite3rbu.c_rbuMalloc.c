
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rc; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef int sqlite3_int64 ;


 scalar_t__ SQLITE_NOMEM ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int memset (void*,int ,int ) ;
 void* sqlite3_malloc64 (int ) ;

__attribute__((used)) static void *rbuMalloc(sqlite3rbu *p, sqlite3_int64 nByte){
  void *pRet = 0;
  if( p->rc==SQLITE_OK ){
    assert( nByte>0 );
    pRet = sqlite3_malloc64(nByte);
    if( pRet==0 ){
      p->rc = SQLITE_NOMEM;
    }else{
      memset(pRet, 0, nByte);
    }
  }
  return pRet;
}
