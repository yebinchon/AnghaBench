
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_3__ {int* p; size_t n; } ;
typedef TYPE_1__ Fts5Buffer ;


 scalar_t__ sqlite3Fts5PutVarint (int*,int) ;

void sqlite3Fts5PoslistSafeAppend(
  Fts5Buffer *pBuf,
  i64 *piPrev,
  i64 iPos
){
  static const i64 colmask = ((i64)(0x7FFFFFFF)) << 32;
  if( (iPos & colmask) != (*piPrev & colmask) ){
    pBuf->p[pBuf->n++] = 1;
    pBuf->n += sqlite3Fts5PutVarint(&pBuf->p[pBuf->n], (iPos>>32));
    *piPrev = (iPos & colmask);
  }
  pBuf->n += sqlite3Fts5PutVarint(&pBuf->p[pBuf->n], (iPos-*piPrev)+2);
  *piPrev = iPos;
}
