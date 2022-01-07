
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_7__ {scalar_t__ iRowid; } ;
struct TYPE_6__ {TYPE_2__* pIter; struct TYPE_6__* pSynonym; } ;
typedef TYPE_1__ Fts5ExprTerm ;


 int SQLITE_OK ;
 scalar_t__ fts5ExprSynonymRowid (TYPE_1__*,int,int*) ;
 scalar_t__ sqlite3Fts5IterEof (TYPE_2__*) ;
 int sqlite3Fts5IterNextFrom (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int fts5ExprSynonymAdvanceto(
  Fts5ExprTerm *pTerm,
  int bDesc,
  i64 *piLast,
  int *pRc
){
  int rc = SQLITE_OK;
  i64 iLast = *piLast;
  Fts5ExprTerm *p;
  int bEof = 0;

  for(p=pTerm; rc==SQLITE_OK && p; p=p->pSynonym){
    if( sqlite3Fts5IterEof(p->pIter)==0 ){
      i64 iRowid = p->pIter->iRowid;
      if( (bDesc==0 && iLast>iRowid) || (bDesc && iLast<iRowid) ){
        rc = sqlite3Fts5IterNextFrom(p->pIter, iLast);
      }
    }
  }

  if( rc!=SQLITE_OK ){
    *pRc = rc;
    bEof = 1;
  }else{
    *piLast = fts5ExprSynonymRowid(pTerm, bDesc, &bEof);
  }
  return bEof;
}
