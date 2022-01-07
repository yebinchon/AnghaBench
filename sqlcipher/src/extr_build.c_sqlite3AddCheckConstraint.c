
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {size_t iDb; } ;
struct TYPE_13__ {TYPE_1__ init; TYPE_2__* aDb; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_14__ {int pCheck; } ;
typedef TYPE_4__ Table ;
struct TYPE_16__ {scalar_t__ n; } ;
struct TYPE_15__ {TYPE_3__* db; TYPE_7__ constraintName; TYPE_4__* pNewTable; } ;
struct TYPE_12__ {int pBt; } ;
typedef TYPE_5__ Parse ;
typedef int Expr ;


 int IN_DECLARE_VTAB ;
 int sqlite3BtreeIsReadonly (int ) ;
 int sqlite3ExprDelete (TYPE_3__*,int *) ;
 int sqlite3ExprListAppend (TYPE_5__*,int ,int *) ;
 int sqlite3ExprListSetName (TYPE_5__*,int ,TYPE_7__*,int) ;

void sqlite3AddCheckConstraint(
  Parse *pParse,
  Expr *pCheckExpr
){

  Table *pTab = pParse->pNewTable;
  sqlite3 *db = pParse->db;
  if( pTab && !IN_DECLARE_VTAB
   && !sqlite3BtreeIsReadonly(db->aDb[db->init.iDb].pBt)
  ){
    pTab->pCheck = sqlite3ExprListAppend(pParse, pTab->pCheck, pCheckExpr);
    if( pParse->constraintName.n ){
      sqlite3ExprListSetName(pParse, pTab->pCheck, &pParse->constraintName, 1);
    }
  }else

  {
    sqlite3ExprDelete(pParse->db, pCheckExpr);
  }
}
