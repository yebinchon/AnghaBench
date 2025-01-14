
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_14__ {size_t n; int * p; } ;
struct TYPE_13__ {scalar_t__ rc; } ;
struct TYPE_11__ {int nData; int pData; } ;
struct TYPE_12__ {TYPE_1__ base; } ;
typedef TYPE_2__ Fts5Iter ;
typedef TYPE_3__ Fts5Index ;
typedef TYPE_4__ Fts5Buffer ;


 int FTS5_DATA_ZERO_PADDING ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 scalar_t__ fts5BufferGrow (scalar_t__*,TYPE_4__*,int) ;
 int fts5BufferSafeAppendBlob (TYPE_4__*,int ,int) ;
 int fts5BufferSafeAppendVarint (TYPE_4__*,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void fts5AppendPoslist(
  Fts5Index *p,
  i64 iDelta,
  Fts5Iter *pMulti,
  Fts5Buffer *pBuf
){
  int nData = pMulti->base.nData;
  int nByte = nData + 9 + 9 + FTS5_DATA_ZERO_PADDING;
  assert( nData>0 );
  if( p->rc==SQLITE_OK && 0==fts5BufferGrow(&p->rc, pBuf, nByte) ){
    fts5BufferSafeAppendVarint(pBuf, iDelta);
    fts5BufferSafeAppendVarint(pBuf, nData*2);
    fts5BufferSafeAppendBlob(pBuf, pMulti->base.pData, nData);
    memset(&pBuf->p[pBuf->n], 0, FTS5_DATA_ZERO_PADDING);
  }
}
