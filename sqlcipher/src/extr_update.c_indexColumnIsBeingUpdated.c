
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t i16 ;
struct TYPE_7__ {size_t* aiColumn; TYPE_2__* aColExpr; } ;
struct TYPE_6__ {TYPE_1__* a; } ;
struct TYPE_5__ {scalar_t__ pExpr; } ;
typedef TYPE_3__ Index ;


 size_t XN_EXPR ;
 size_t XN_ROWID ;
 int assert (int) ;
 int sqlite3ExprReferencesUpdatedColumn (scalar_t__,int*,int) ;

__attribute__((used)) static int indexColumnIsBeingUpdated(
  Index *pIdx,
  int iCol,
  int *aXRef,
  int chngRowid
){
  i16 iIdxCol = pIdx->aiColumn[iCol];
  assert( iIdxCol!=XN_ROWID );
  if( iIdxCol>=0 ){
    return aXRef[iIdxCol]>=0;
  }
  assert( iIdxCol==XN_EXPR );
  assert( pIdx->aColExpr!=0 );
  assert( pIdx->aColExpr->a[iCol].pExpr!=0 );
  return sqlite3ExprReferencesUpdatedColumn(pIdx->aColExpr->a[iCol].pExpr,
                                            aXRef,chngRowid);
}
