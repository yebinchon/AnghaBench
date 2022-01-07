
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_4__ {size_t n; int * p; } ;
typedef TYPE_1__ Fts5Buffer ;


 scalar_t__ fts5BufferGrow (int*,TYPE_1__*,int) ;
 scalar_t__ sqlite3Fts5PutVarint (int *,int ) ;

void sqlite3Fts5BufferAppendVarint(int *pRc, Fts5Buffer *pBuf, i64 iVal){
  if( fts5BufferGrow(pRc, pBuf, 9) ) return;
  pBuf->n += sqlite3Fts5PutVarint(&pBuf->p[pBuf->n], iVal);
}
