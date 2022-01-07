
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ExprList_item {int zSpan; } ;
struct TYPE_8__ {scalar_t__ mallocFailed; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_10__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_9__ {TYPE_1__* db; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ ExprList ;


 int assert (int) ;
 int sqlite3DbFree (TYPE_1__*,int ) ;
 int sqlite3DbSpanDup (TYPE_1__*,char const*,char const*) ;

void sqlite3ExprListSetSpan(
  Parse *pParse,
  ExprList *pList,
  const char *zStart,
  const char *zEnd
){
  sqlite3 *db = pParse->db;
  assert( pList!=0 || db->mallocFailed!=0 );
  if( pList ){
    struct ExprList_item *pItem = &pList->a[pList->nExpr-1];
    assert( pList->nExpr>0 );
    sqlite3DbFree(db, pItem->zSpan);
    pItem->zSpan = sqlite3DbSpanDup(db, zStart, zEnd);
  }
}
