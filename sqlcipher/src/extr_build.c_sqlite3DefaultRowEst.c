
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* aiRowLogEst; int nKeyCol; scalar_t__ pPartIdxWhere; TYPE_1__* pTable; int hasStat1; } ;
struct TYPE_5__ {int nRowLogEst; } ;
typedef int LogEst ;
typedef TYPE_2__ Index ;


 int ArraySize (int*) ;
 scalar_t__ IsUniqueIndex (TYPE_2__*) ;
 int MIN (int ,int) ;
 int assert (int) ;
 int memcpy (int*,int*,int) ;
 int sqlite3LogEst (int) ;

void sqlite3DefaultRowEst(Index *pIdx){

  LogEst aVal[] = { 33, 32, 30, 28, 26 };
  LogEst *a = pIdx->aiRowLogEst;
  int nCopy = MIN(ArraySize(aVal), pIdx->nKeyCol);
  int i;


  assert( !pIdx->hasStat1 );




  a[0] = pIdx->pTable->nRowLogEst;
  if( pIdx->pPartIdxWhere!=0 ) a[0] -= 10; assert( 10==sqlite3LogEst(2) );
  if( a[0]<33 ) a[0] = 33; assert( 33==sqlite3LogEst(10) );



  memcpy(&a[1], aVal, nCopy*sizeof(LogEst));
  for(i=nCopy+1; i<=pIdx->nKeyCol; i++){
    a[i] = 23; assert( 23==sqlite3LogEst(5) );
  }

  assert( 0==sqlite3LogEst(1) );
  if( IsUniqueIndex(pIdx) ) a[pIdx->nKeyCol] = 0;
}
