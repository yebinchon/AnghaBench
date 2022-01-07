
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_int64 ;
struct TYPE_3__ {int n; int nAlloc; int * a; } ;
typedef TYPE_1__ ZipfileBuffer ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int * sqlite3_realloc64 (int *,int) ;

__attribute__((used)) static int zipfileBufferGrow(ZipfileBuffer *pBuf, int nByte){
  if( pBuf->n+nByte>pBuf->nAlloc ){
    u8 *aNew;
    sqlite3_int64 nNew = pBuf->n ? pBuf->n*2 : 512;
    int nReq = pBuf->n + nByte;

    while( nNew<nReq ) nNew = nNew*2;
    aNew = sqlite3_realloc64(pBuf->a, nNew);
    if( aNew==0 ) return SQLITE_NOMEM;
    pBuf->a = aNew;
    pBuf->nAlloc = (int)nNew;
  }
  return SQLITE_OK;
}
