
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ iOrderByCol; } ;
struct TYPE_15__ {TYPE_1__ x; } ;
struct ExprList_item {int pExpr; TYPE_2__ u; } ;
struct TYPE_16__ {int* aLimit; scalar_t__ mallocFailed; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_19__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_18__ {TYPE_3__* db; } ;
struct TYPE_17__ {TYPE_6__* pEList; } ;
typedef TYPE_4__ Select ;
typedef TYPE_5__ Parse ;
typedef TYPE_6__ ExprList ;


 size_t SQLITE_LIMIT_COLUMN ;
 int assert (int) ;
 int resolveAlias (TYPE_5__*,TYPE_6__*,scalar_t__,int ,char const*,int ) ;
 int resolveOutOfRangeError (TYPE_5__*,char const*,int,scalar_t__) ;
 int sqlite3ErrorMsg (TYPE_5__*,char*,char const*) ;

int sqlite3ResolveOrderGroupBy(
  Parse *pParse,
  Select *pSelect,
  ExprList *pOrderBy,
  const char *zType
){
  int i;
  sqlite3 *db = pParse->db;
  ExprList *pEList;
  struct ExprList_item *pItem;

  if( pOrderBy==0 || pParse->db->mallocFailed ) return 0;
  if( pOrderBy->nExpr>db->aLimit[SQLITE_LIMIT_COLUMN] ){
    sqlite3ErrorMsg(pParse, "too many terms in %s BY clause", zType);
    return 1;
  }
  pEList = pSelect->pEList;
  assert( pEList!=0 );
  for(i=0, pItem=pOrderBy->a; i<pOrderBy->nExpr; i++, pItem++){
    if( pItem->u.x.iOrderByCol ){
      if( pItem->u.x.iOrderByCol>pEList->nExpr ){
        resolveOutOfRangeError(pParse, zType, i+1, pEList->nExpr);
        return 1;
      }
      resolveAlias(pParse, pEList, pItem->u.x.iOrderByCol-1, pItem->pExpr,
                   zType,0);
    }
  }
  return 0;
}
