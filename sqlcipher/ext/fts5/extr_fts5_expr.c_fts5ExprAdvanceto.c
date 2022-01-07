
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_5__ {scalar_t__ iRowid; } ;
typedef TYPE_1__ Fts5IndexIter ;


 int assert (int) ;
 scalar_t__ sqlite3Fts5IterEof (TYPE_1__*) ;
 int sqlite3Fts5IterNextFrom (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int fts5ExprAdvanceto(
  Fts5IndexIter *pIter,
  int bDesc,
  i64 *piLast,
  int *pRc,
  int *pbEof
){
  i64 iLast = *piLast;
  i64 iRowid;

  iRowid = pIter->iRowid;
  if( (bDesc==0 && iLast>iRowid) || (bDesc && iLast<iRowid) ){
    int rc = sqlite3Fts5IterNextFrom(pIter, iLast);
    if( rc || sqlite3Fts5IterEof(pIter) ){
      *pRc = rc;
      *pbEof = 1;
      return 1;
    }
    iRowid = pIter->iRowid;
    assert( (bDesc==0 && iRowid>=iLast) || (bDesc==1 && iRowid<=iLast) );
  }
  *piLast = iRowid;

  return 0;
}
