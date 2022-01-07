
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pFuncArg; int zIndexedBy; } ;
struct TYPE_6__ {scalar_t__ isTabFunc; scalar_t__ isIndexedBy; } ;
struct SrcList_item {int pUsing; int pOn; int pSelect; int pTab; TYPE_2__ u1; TYPE_1__ fg; int zAlias; int zName; int zDatabase; } ;
typedef int sqlite3 ;
struct TYPE_8__ {int nSrc; struct SrcList_item* a; } ;
typedef TYPE_3__ SrcList ;


 int sqlite3DbFree (int *,int ) ;
 int sqlite3DbFreeNN (int *,TYPE_3__*) ;
 int sqlite3DeleteTable (int *,int ) ;
 int sqlite3ExprDelete (int *,int ) ;
 int sqlite3ExprListDelete (int *,int ) ;
 int sqlite3IdListDelete (int *,int ) ;
 int sqlite3SelectDelete (int *,int ) ;

void sqlite3SrcListDelete(sqlite3 *db, SrcList *pList){
  int i;
  struct SrcList_item *pItem;
  if( pList==0 ) return;
  for(pItem=pList->a, i=0; i<pList->nSrc; i++, pItem++){
    sqlite3DbFree(db, pItem->zDatabase);
    sqlite3DbFree(db, pItem->zName);
    sqlite3DbFree(db, pItem->zAlias);
    if( pItem->fg.isIndexedBy ) sqlite3DbFree(db, pItem->u1.zIndexedBy);
    if( pItem->fg.isTabFunc ) sqlite3ExprListDelete(db, pItem->u1.pFuncArg);
    sqlite3DeleteTable(db, pItem->pTab);
    sqlite3SelectDelete(db, pItem->pSelect);
    sqlite3ExprDelete(db, pItem->pOn);
    sqlite3IdListDelete(db, pItem->pUsing);
  }
  sqlite3DbFreeNN(db, pList);
}
