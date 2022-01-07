
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_3__ {int n; int* a; } ;
typedef TYPE_1__ Blob ;


 int FTS_CORRUPT_VTAB ;
 int SQLITE_OK ;
 scalar_t__ fts3GetVarint32 (int*,int*) ;
 scalar_t__ sqlite3Fts3GetVarint (int*,int *) ;

__attribute__((used)) static int fts3IncrmergeHintPop(Blob *pHint, i64 *piAbsLevel, int *pnInput){
  const int nHint = pHint->n;
  int i;

  i = pHint->n-2;
  while( i>0 && (pHint->a[i-1] & 0x80) ) i--;
  while( i>0 && (pHint->a[i-1] & 0x80) ) i--;

  pHint->n = i;
  i += sqlite3Fts3GetVarint(&pHint->a[i], piAbsLevel);
  i += fts3GetVarint32(&pHint->a[i], pnInput);
  if( i!=nHint ) return FTS_CORRUPT_VTAB;

  return SQLITE_OK;
}
