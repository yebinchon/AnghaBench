
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nAlloc; scalar_t__ mxAlloc; int db; scalar_t__ accError; } ;
typedef TYPE_1__ sqlite3_str ;
typedef scalar_t__ sqlite3_int64 ;


 int SQLITE_NOMEM ;
 int SQLITE_TOOBIG ;
 int setStrAccumError (TYPE_1__*,int ) ;
 char* sqlite3DbMallocRaw (int ,scalar_t__) ;

__attribute__((used)) static char *printfTempBuf(sqlite3_str *pAccum, sqlite3_int64 n){
  char *z;
  if( pAccum->accError ) return 0;
  if( n>pAccum->nAlloc && n>pAccum->mxAlloc ){
    setStrAccumError(pAccum, SQLITE_TOOBIG);
    return 0;
  }
  z = sqlite3DbMallocRaw(pAccum->db, n);
  if( z==0 ){
    setStrAccumError(pAccum, SQLITE_NOMEM);
  }
  return z;
}
