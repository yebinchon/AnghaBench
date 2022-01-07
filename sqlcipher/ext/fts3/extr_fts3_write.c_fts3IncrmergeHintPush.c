
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_4__ {int n; int * a; } ;
typedef TYPE_1__ Blob ;


 int FTS3_VARINT_MAX ;
 int SQLITE_OK ;
 int blobGrowBuffer (TYPE_1__*,int,int*) ;
 scalar_t__ sqlite3Fts3PutVarint (int *,int ) ;

__attribute__((used)) static void fts3IncrmergeHintPush(
  Blob *pHint,
  i64 iAbsLevel,
  int nInput,
  int *pRc
){
  blobGrowBuffer(pHint, pHint->n + 2*FTS3_VARINT_MAX, pRc);
  if( *pRc==SQLITE_OK ){
    pHint->n += sqlite3Fts3PutVarint(&pHint->a[pHint->n], iAbsLevel);
    pHint->n += sqlite3Fts3PutVarint(&pHint->a[pHint->n], (i64)nInput);
  }
}
