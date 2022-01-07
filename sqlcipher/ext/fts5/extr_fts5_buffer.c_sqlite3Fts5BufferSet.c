
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ n; } ;
typedef TYPE_1__ Fts5Buffer ;


 int sqlite3Fts5BufferAppendBlob (int*,TYPE_1__*,int,int const*) ;

void sqlite3Fts5BufferSet(
  int *pRc,
  Fts5Buffer *pBuf,
  int nData,
  const u8 *pData
){
  pBuf->n = 0;
  sqlite3Fts5BufferAppendBlob(pRc, pBuf, nData, pData);
}
