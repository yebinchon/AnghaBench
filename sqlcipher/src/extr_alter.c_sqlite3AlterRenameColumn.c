
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


struct TYPE_32__ {TYPE_1__* aDb; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_33__ {scalar_t__ n; int * z; } ;
typedef TYPE_4__ Token ;
struct TYPE_34__ {int nCol; int zName; TYPE_2__* aCol; int pSchema; } ;
typedef TYPE_5__ Table ;
struct TYPE_36__ {TYPE_3__* db; } ;
struct TYPE_35__ {int * a; } ;
struct TYPE_31__ {int zName; } ;
struct TYPE_30__ {char* zDbSName; } ;
typedef TYPE_6__ SrcList ;
typedef TYPE_7__ Parse ;


 int MASTER_NAME ;
 int SQLITE_ALTER_TABLE ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 scalar_t__ isAlterableTable (TYPE_7__*,TYPE_5__*) ;
 scalar_t__ isRealTable (TYPE_7__*,TYPE_5__*) ;
 int renameReloadSchema (TYPE_7__*,int) ;
 int renameTestSchema (TYPE_7__*,char const*,int) ;
 scalar_t__ sqlite3AuthCheck (TYPE_7__*,int ,char const*,int ,int ) ;
 int sqlite3DbFree (TYPE_3__*,char*) ;
 int sqlite3ErrorMsg (TYPE_7__*,char*,char*) ;
 int sqlite3Isquote (int ) ;
 TYPE_5__* sqlite3LocateTableItem (TYPE_7__*,int ,int *) ;
 int sqlite3MayAbort (TYPE_7__*) ;
 char* sqlite3NameFromToken (TYPE_3__*,TYPE_4__*) ;
 int sqlite3NestedParse (TYPE_7__*,char*,char const*,char const*,char const*,int,...) ;
 int sqlite3SchemaToIndex (TYPE_3__*,int ) ;
 int sqlite3SrcListDelete (TYPE_3__*,TYPE_6__*) ;
 scalar_t__ sqlite3StrICmp (int ,char*) ;

void sqlite3AlterRenameColumn(
  Parse *pParse,
  SrcList *pSrc,
  Token *pOld,
  Token *pNew
){
  sqlite3 *db = pParse->db;
  Table *pTab;
  int iCol;
  char *zOld = 0;
  char *zNew = 0;
  const char *zDb;
  int iSchema;
  int bQuote;


  pTab = sqlite3LocateTableItem(pParse, 0, &pSrc->a[0]);
  if( !pTab ) goto exit_rename_column;


  if( SQLITE_OK!=isAlterableTable(pParse, pTab) ) goto exit_rename_column;
  if( SQLITE_OK!=isRealTable(pParse, pTab) ) goto exit_rename_column;


  iSchema = sqlite3SchemaToIndex(db, pTab->pSchema);
  assert( iSchema>=0 );
  zDb = db->aDb[iSchema].zDbSName;



  if( sqlite3AuthCheck(pParse, SQLITE_ALTER_TABLE, zDb, pTab->zName, 0) ){
    goto exit_rename_column;
  }




  zOld = sqlite3NameFromToken(db, pOld);
  if( !zOld ) goto exit_rename_column;
  for(iCol=0; iCol<pTab->nCol; iCol++){
    if( 0==sqlite3StrICmp(pTab->aCol[iCol].zName, zOld) ) break;
  }
  if( iCol==pTab->nCol ){
    sqlite3ErrorMsg(pParse, "no such column: \"%s\"", zOld);
    goto exit_rename_column;
  }





  sqlite3MayAbort(pParse);
  zNew = sqlite3NameFromToken(db, pNew);
  if( !zNew ) goto exit_rename_column;
  assert( pNew->n>0 );
  bQuote = sqlite3Isquote(pNew->z[0]);
  sqlite3NestedParse(pParse,
      "UPDATE \"%w\".%s SET "
      "sql = sqlite_rename_column(sql, type, name, %Q, %Q, %d, %Q, %d, %d) "
      "WHERE name NOT LIKE 'sqlite_%%' AND (type != 'index' OR tbl_name = %Q)"
      " AND sql NOT LIKE 'create virtual%%'",
      zDb, MASTER_NAME,
      zDb, pTab->zName, iCol, zNew, bQuote, iSchema==1,
      pTab->zName
  );

  sqlite3NestedParse(pParse,
      "UPDATE temp.%s SET "
      "sql = sqlite_rename_column(sql, type, name, %Q, %Q, %d, %Q, %d, 1) "
      "WHERE type IN ('trigger', 'view')",
      MASTER_NAME,
      zDb, pTab->zName, iCol, zNew, bQuote
  );


  renameReloadSchema(pParse, iSchema);
  renameTestSchema(pParse, zDb, iSchema==1);

 exit_rename_column:
  sqlite3SrcListDelete(db, pSrc);
  sqlite3DbFree(db, zOld);
  sqlite3DbFree(db, zNew);
  return;
}
