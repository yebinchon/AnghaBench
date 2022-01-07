
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int prereqRight; int eOperator; } ;
typedef TYPE_1__ WhereTerm ;
typedef int WhereScan ;
typedef int WhereClause ;
typedef int Index ;
typedef int Bitmask ;


 int WO_EQ ;
 int WO_IS ;
 int testcase (int) ;
 TYPE_1__* whereScanInit (int *,int *,int,int,int,int *) ;
 TYPE_1__* whereScanNext (int *) ;

WhereTerm *sqlite3WhereFindTerm(
  WhereClause *pWC,
  int iCur,
  int iColumn,
  Bitmask notReady,
  u32 op,
  Index *pIdx
){
  WhereTerm *pResult = 0;
  WhereTerm *p;
  WhereScan scan;

  p = whereScanInit(&scan, pWC, iCur, iColumn, op, pIdx);
  op &= WO_EQ|WO_IS;
  while( p ){
    if( (p->prereqRight & notReady)==0 ){
      if( p->prereqRight==0 && (p->eOperator&op)!=0 ){
        testcase( p->eOperator & WO_IS );
        return p;
      }
      if( pResult==0 ) pResult = p;
    }
    p = whereScanNext(&scan);
  }
  return pResult;
}
