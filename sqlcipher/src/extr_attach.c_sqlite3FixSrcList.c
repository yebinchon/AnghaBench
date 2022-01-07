
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_13__ {int pFuncArg; } ;
struct TYPE_12__ {scalar_t__ isTabFunc; } ;
struct SrcList_item {TYPE_2__ u1; TYPE_1__ fg; int pOn; int pSelect; int pSchema; scalar_t__ zDatabase; } ;
struct TYPE_15__ {char* zDb; scalar_t__ bVarOnly; int pSchema; TYPE_10__* pParse; int pName; int zType; } ;
struct TYPE_14__ {int nSrc; struct SrcList_item* a; } ;
struct TYPE_11__ {int db; } ;
typedef TYPE_3__ SrcList ;
typedef TYPE_4__ DbFixer ;


 scalar_t__ NEVER (int) ;
 int sqlite3DbFree (int ,scalar_t__) ;
 int sqlite3ErrorMsg (TYPE_10__*,char*,int ,int ,scalar_t__) ;
 scalar_t__ sqlite3FixExpr (TYPE_4__*,int ) ;
 scalar_t__ sqlite3FixExprList (TYPE_4__*,int ) ;
 scalar_t__ sqlite3FixSelect (TYPE_4__*,int ) ;
 scalar_t__ sqlite3StrICmp (scalar_t__,char const*) ;

int sqlite3FixSrcList(
  DbFixer *pFix,
  SrcList *pList
){
  int i;
  const char *zDb;
  struct SrcList_item *pItem;

  if( NEVER(pList==0) ) return 0;
  zDb = pFix->zDb;
  for(i=0, pItem=pList->a; i<pList->nSrc; i++, pItem++){
    if( pFix->bVarOnly==0 ){
      if( pItem->zDatabase && sqlite3StrICmp(pItem->zDatabase, zDb) ){
        sqlite3ErrorMsg(pFix->pParse,
            "%s %T cannot reference objects in database %s",
            pFix->zType, pFix->pName, pItem->zDatabase);
        return 1;
      }
      sqlite3DbFree(pFix->pParse->db, pItem->zDatabase);
      pItem->zDatabase = 0;
      pItem->pSchema = pFix->pSchema;
    }

    if( sqlite3FixSelect(pFix, pItem->pSelect) ) return 1;
    if( sqlite3FixExpr(pFix, pItem->pOn) ) return 1;

    if( pItem->fg.isTabFunc && sqlite3FixExprList(pFix, pItem->u1.pFuncArg) ){
      return 1;
    }
  }
  return 0;
}
