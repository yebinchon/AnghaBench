
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_21__ {int tabFlags; int nCol; int iPKey; scalar_t__ keyConf; TYPE_7__* aCol; int zName; } ;
typedef TYPE_3__ Table ;
struct TYPE_25__ {char* zName; int colFlags; } ;
struct TYPE_19__ {char* zToken; } ;
struct TYPE_24__ {scalar_t__ op; TYPE_1__ u; } ;
struct TYPE_23__ {int nExpr; TYPE_2__* a; } ;
struct TYPE_22__ {int db; int iPkSortOrder; TYPE_3__* pNewTable; } ;
struct TYPE_20__ {int sortOrder; int pExpr; } ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ ExprList ;
typedef TYPE_6__ Expr ;
typedef TYPE_7__ Column ;


 int COLFLAG_PRIMKEY ;
 scalar_t__ IN_RENAME_OBJECT ;
 int SQLITE_IDXTYPE_PRIMARYKEY ;
 int SQLITE_SO_DESC ;
 int TF_Autoincrement ;
 int TF_HasPrimaryKey ;
 scalar_t__ TK_ID ;
 int assert (int) ;
 char const* sqlite3ColumnType (TYPE_7__*,char*) ;
 int sqlite3CreateIndex (TYPE_4__*,int ,int ,int ,TYPE_5__*,int,int ,int ,int,int ,int ) ;
 int sqlite3ErrorMsg (TYPE_4__*,char*,...) ;
 int sqlite3ExprListDelete (int ,TYPE_5__*) ;
 TYPE_6__* sqlite3ExprSkipCollate (int ) ;
 int sqlite3RenameTokenRemap (TYPE_4__*,int*,TYPE_6__*) ;
 scalar_t__ sqlite3StrICmp (char const*,char*) ;
 int sqlite3StringToId (TYPE_6__*) ;

void sqlite3AddPrimaryKey(
  Parse *pParse,
  ExprList *pList,
  int onError,
  int autoInc,
  int sortOrder
){
  Table *pTab = pParse->pNewTable;
  Column *pCol = 0;
  int iCol = -1, i;
  int nTerm;
  if( pTab==0 ) goto primary_key_exit;
  if( pTab->tabFlags & TF_HasPrimaryKey ){
    sqlite3ErrorMsg(pParse,
      "table \"%s\" has more than one primary key", pTab->zName);
    goto primary_key_exit;
  }
  pTab->tabFlags |= TF_HasPrimaryKey;
  if( pList==0 ){
    iCol = pTab->nCol - 1;
    pCol = &pTab->aCol[iCol];
    pCol->colFlags |= COLFLAG_PRIMKEY;
    nTerm = 1;
  }else{
    nTerm = pList->nExpr;
    for(i=0; i<nTerm; i++){
      Expr *pCExpr = sqlite3ExprSkipCollate(pList->a[i].pExpr);
      assert( pCExpr!=0 );
      sqlite3StringToId(pCExpr);
      if( pCExpr->op==TK_ID ){
        const char *zCName = pCExpr->u.zToken;
        for(iCol=0; iCol<pTab->nCol; iCol++){
          if( sqlite3StrICmp(zCName, pTab->aCol[iCol].zName)==0 ){
            pCol = &pTab->aCol[iCol];
            pCol->colFlags |= COLFLAG_PRIMKEY;
            break;
          }
        }
      }
    }
  }
  if( nTerm==1
   && pCol
   && sqlite3StrICmp(sqlite3ColumnType(pCol,""), "INTEGER")==0
   && sortOrder!=SQLITE_SO_DESC
  ){
    if( IN_RENAME_OBJECT && pList ){
      Expr *pCExpr = sqlite3ExprSkipCollate(pList->a[0].pExpr);
      sqlite3RenameTokenRemap(pParse, &pTab->iPKey, pCExpr);
    }
    pTab->iPKey = iCol;
    pTab->keyConf = (u8)onError;
    assert( autoInc==0 || autoInc==1 );
    pTab->tabFlags |= autoInc*TF_Autoincrement;
    if( pList ) pParse->iPkSortOrder = pList->a[0].sortOrder;
  }else if( autoInc ){

    sqlite3ErrorMsg(pParse, "AUTOINCREMENT is only allowed on an "
       "INTEGER PRIMARY KEY");

  }else{
    sqlite3CreateIndex(pParse, 0, 0, 0, pList, onError, 0,
                           0, sortOrder, 0, SQLITE_IDXTYPE_PRIMARYKEY);
    pList = 0;
  }

primary_key_exit:
  sqlite3ExprListDelete(pParse->db, pList);
  return;
}
