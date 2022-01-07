
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_3__ {int bDesc; } ;
typedef TYPE_1__ Fts5Expr ;


 int assert (int) ;

__attribute__((used)) static int fts5RowidCmp(
  Fts5Expr *pExpr,
  i64 iLhs,
  i64 iRhs
){
  assert( pExpr->bDesc==0 || pExpr->bDesc==1 );
  if( pExpr->bDesc==0 ){
    if( iLhs<iRhs ) return -1;
    return (iLhs > iRhs);
  }else{
    if( iLhs>iRhs ) return -1;
    return (iLhs < iRhs);
  }
}
