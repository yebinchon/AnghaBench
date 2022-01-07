
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_6__ {scalar_t__ bRev; } ;
typedef TYPE_1__ Fts5Iter ;
typedef int Fts5Index ;


 scalar_t__ fts5MultiIterEof (int *,TYPE_1__*) ;
 int fts5MultiIterNext (int *,TYPE_1__*,int,scalar_t__) ;
 scalar_t__ fts5MultiIterRowid (TYPE_1__*) ;

__attribute__((used)) static void fts5MultiIterNextFrom(
  Fts5Index *p,
  Fts5Iter *pIter,
  i64 iMatch
){
  while( 1 ){
    i64 iRowid;
    fts5MultiIterNext(p, pIter, 1, iMatch);
    if( fts5MultiIterEof(p, pIter) ) break;
    iRowid = fts5MultiIterRowid(pIter);
    if( pIter->bRev==0 && iRowid>=iMatch ) break;
    if( pIter->bRev!=0 && iRowid<=iMatch ) break;
  }
}
