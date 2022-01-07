
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ynVar ;
struct SrcList_item {int colUsed; int iCursor; TYPE_1__* pTab; } ;
typedef int sqlite3 ;
struct TYPE_9__ {TYPE_1__* pTab; } ;
struct TYPE_11__ {int iColumn; TYPE_2__ y; int iTable; } ;
struct TYPE_10__ {struct SrcList_item* a; } ;
struct TYPE_8__ {int iPKey; } ;
typedef TYPE_3__ SrcList ;
typedef TYPE_4__ Expr ;
typedef int Bitmask ;


 int BMS ;
 int TK_COLUMN ;
 TYPE_4__* sqlite3ExprAlloc (int *,int ,int ,int ) ;
 int testcase (int) ;

Expr *sqlite3CreateColumnExpr(sqlite3 *db, SrcList *pSrc, int iSrc, int iCol){
  Expr *p = sqlite3ExprAlloc(db, TK_COLUMN, 0, 0);
  if( p ){
    struct SrcList_item *pItem = &pSrc->a[iSrc];
    p->y.pTab = pItem->pTab;
    p->iTable = pItem->iCursor;
    if( p->y.pTab->iPKey==iCol ){
      p->iColumn = -1;
    }else{
      p->iColumn = (ynVar)iCol;
      testcase( iCol==BMS );
      testcase( iCol==BMS-1 );
      pItem->colUsed |= ((Bitmask)1)<<(iCol>=BMS ? BMS-1 : iCol);
    }
  }
  return p;
}
