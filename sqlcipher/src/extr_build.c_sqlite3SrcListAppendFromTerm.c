
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct SrcList_item {scalar_t__ zName; int * pUsing; int * pOn; int * pSelect; int zAlias; } ;
typedef int sqlite3 ;
struct TYPE_20__ {scalar_t__ n; scalar_t__ z; } ;
typedef TYPE_1__ Token ;
struct TYPE_22__ {int * db; } ;
struct TYPE_21__ {int nSrc; struct SrcList_item* a; } ;
typedef TYPE_2__ SrcList ;
typedef int Select ;
typedef TYPE_3__ Parse ;
typedef int IdList ;
typedef int Expr ;


 scalar_t__ ALWAYS (TYPE_1__*) ;
 scalar_t__ IN_RENAME_OBJECT ;
 int assert (int) ;
 int sqlite3ErrorMsg (TYPE_3__*,char*,char*) ;
 int sqlite3ExprDelete (int *,int *) ;
 int sqlite3IdListDelete (int *,int *) ;
 int sqlite3NameFromToken (int *,TYPE_1__*) ;
 int sqlite3RenameTokenMap (TYPE_3__*,scalar_t__,TYPE_1__*) ;
 int sqlite3SelectDelete (int *,int *) ;
 TYPE_2__* sqlite3SrcListAppend (TYPE_3__*,TYPE_2__*,TYPE_1__*,TYPE_1__*) ;

SrcList *sqlite3SrcListAppendFromTerm(
  Parse *pParse,
  SrcList *p,
  Token *pTable,
  Token *pDatabase,
  Token *pAlias,
  Select *pSubquery,
  Expr *pOn,
  IdList *pUsing
){
  struct SrcList_item *pItem;
  sqlite3 *db = pParse->db;
  if( !p && (pOn || pUsing) ){
    sqlite3ErrorMsg(pParse, "a JOIN clause is required before %s",
      (pOn ? "ON" : "USING")
    );
    goto append_from_error;
  }
  p = sqlite3SrcListAppend(pParse, p, pTable, pDatabase);
  if( p==0 ){
    goto append_from_error;
  }
  assert( p->nSrc>0 );
  pItem = &p->a[p->nSrc-1];
  assert( (pTable==0)==(pDatabase==0) );
  assert( pItem->zName==0 || pDatabase!=0 );
  if( IN_RENAME_OBJECT && pItem->zName ){
    Token *pToken = (ALWAYS(pDatabase) && pDatabase->z) ? pDatabase : pTable;
    sqlite3RenameTokenMap(pParse, pItem->zName, pToken);
  }
  assert( pAlias!=0 );
  if( pAlias->n ){
    pItem->zAlias = sqlite3NameFromToken(db, pAlias);
  }
  pItem->pSelect = pSubquery;
  pItem->pOn = pOn;
  pItem->pUsing = pUsing;
  return p;

 append_from_error:
  assert( p==0 );
  sqlite3ExprDelete(db, pOn);
  sqlite3IdListDelete(db, pUsing);
  sqlite3SelectDelete(db, pSubquery);
  return 0;
}
