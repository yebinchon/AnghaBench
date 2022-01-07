
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {size_t n; int * p; } ;
typedef TYPE_1__ Fts5Buffer ;


 int assert_nc (int) ;
 scalar_t__ fts5BufferGrow (int*,TYPE_1__*,scalar_t__) ;
 int memcpy (int *,int const*,scalar_t__) ;

void sqlite3Fts5BufferAppendBlob(
  int *pRc,
  Fts5Buffer *pBuf,
  u32 nData,
  const u8 *pData
){
  assert_nc( *pRc || nData>=0 );
  if( nData ){
    if( fts5BufferGrow(pRc, pBuf, nData) ) return;
    memcpy(&pBuf->p[pBuf->n], pData, nData);
    pBuf->n += nData;
  }
}
