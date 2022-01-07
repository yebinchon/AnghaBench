
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_8__ ;
typedef struct TYPE_43__ TYPE_7__ ;
typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_40__ {int mDbFlags; TYPE_1__* aDb; int mallocFailed; } ;
typedef TYPE_4__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_41__ {TYPE_3__* pVtab; } ;
typedef TYPE_5__ VTable ;
typedef int Token ;
struct TYPE_42__ {char* zName; scalar_t__ pSelect; int pSchema; } ;
typedef TYPE_6__ Table ;
struct TYPE_44__ {int nMem; TYPE_4__* db; } ;
struct TYPE_43__ {int nSrc; int * a; } ;
struct TYPE_39__ {TYPE_2__* pModule; } ;
struct TYPE_38__ {scalar_t__ xRename; } ;
struct TYPE_37__ {char* zDbSName; } ;
typedef TYPE_7__ SrcList ;
typedef TYPE_8__ Parse ;


 int DBFLAG_PreferBuiltin ;
 scalar_t__ IsVirtual (TYPE_6__*) ;
 int MASTER_NAME ;
 scalar_t__ NEVER (int ) ;
 int OP_VRename ;
 int P4_VTAB ;
 int SQLITE_ALTER_TABLE ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 scalar_t__ isAlterableTable (TYPE_8__*,TYPE_6__*) ;
 int renameReloadSchema (TYPE_8__*,int) ;
 int renameTestSchema (TYPE_8__*,char*,int) ;
 scalar_t__ sqlite3AuthCheck (TYPE_8__*,int ,char*,char*,int ) ;
 int sqlite3BtreeHoldsAllMutexes (TYPE_4__*) ;
 scalar_t__ sqlite3CheckObjectName (TYPE_8__*,char*) ;
 int sqlite3DbFree (TYPE_4__*,char*) ;
 int sqlite3ErrorMsg (TYPE_8__*,char*,char*) ;
 scalar_t__ sqlite3FindIndex (TYPE_4__*,char*,char*) ;
 scalar_t__ sqlite3FindTable (TYPE_4__*,char*,char*) ;
 TYPE_5__* sqlite3GetVTable (TYPE_4__*,TYPE_6__*) ;
 int * sqlite3GetVdbe (TYPE_8__*) ;
 TYPE_6__* sqlite3LocateTableItem (TYPE_8__*,int ,int *) ;
 int sqlite3MayAbort (TYPE_8__*) ;
 char* sqlite3NameFromToken (TYPE_4__*,int *) ;
 int sqlite3NestedParse (TYPE_8__*,char*,char*,char const*,char*,...) ;
 int sqlite3SchemaToIndex (TYPE_4__*,int ) ;
 int sqlite3SrcListDelete (TYPE_4__*,TYPE_7__*) ;
 int sqlite3Utf8CharLen (char const*,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int ,int ,char const*,int ) ;
 int sqlite3VdbeLoadString (int *,int,char*) ;
 scalar_t__ sqlite3ViewGetColumnNames (TYPE_8__*,TYPE_6__*) ;

void sqlite3AlterRenameTable(
  Parse *pParse,
  SrcList *pSrc,
  Token *pName
){
  int iDb;
  char *zDb;
  Table *pTab;
  char *zName = 0;
  sqlite3 *db = pParse->db;
  int nTabName;
  const char *zTabName;
  Vdbe *v;
  VTable *pVTab = 0;
  u32 savedDbFlags;

  savedDbFlags = db->mDbFlags;
  if( NEVER(db->mallocFailed) ) goto exit_rename_table;
  assert( pSrc->nSrc==1 );
  assert( sqlite3BtreeHoldsAllMutexes(pParse->db) );

  pTab = sqlite3LocateTableItem(pParse, 0, &pSrc->a[0]);
  if( !pTab ) goto exit_rename_table;
  iDb = sqlite3SchemaToIndex(pParse->db, pTab->pSchema);
  zDb = db->aDb[iDb].zDbSName;
  db->mDbFlags |= DBFLAG_PreferBuiltin;


  zName = sqlite3NameFromToken(db, pName);
  if( !zName ) goto exit_rename_table;




  if( sqlite3FindTable(db, zName, zDb) || sqlite3FindIndex(db, zName, zDb) ){
    sqlite3ErrorMsg(pParse,
        "there is already another table or index with this name: %s", zName);
    goto exit_rename_table;
  }




  if( SQLITE_OK!=isAlterableTable(pParse, pTab) ){
    goto exit_rename_table;
  }
  if( SQLITE_OK!=sqlite3CheckObjectName(pParse, zName) ){ goto
    exit_rename_table;
  }


  if( pTab->pSelect ){
    sqlite3ErrorMsg(pParse, "view %s may not be altered", pTab->zName);
    goto exit_rename_table;
  }




  if( sqlite3AuthCheck(pParse, SQLITE_ALTER_TABLE, zDb, pTab->zName, 0) ){
    goto exit_rename_table;
  }



  if( sqlite3ViewGetColumnNames(pParse, pTab) ){
    goto exit_rename_table;
  }
  if( IsVirtual(pTab) ){
    pVTab = sqlite3GetVTable(db, pTab);
    if( pVTab->pVtab->pModule->xRename==0 ){
      pVTab = 0;
    }
  }






  v = sqlite3GetVdbe(pParse);
  if( v==0 ){
    goto exit_rename_table;
  }
  sqlite3MayAbort(pParse);


  zTabName = pTab->zName;
  nTabName = sqlite3Utf8CharLen(zTabName, -1);



  sqlite3NestedParse(pParse,
      "UPDATE \"%w\".%s SET "
      "sql = sqlite_rename_table(%Q, type, name, sql, %Q, %Q, %d) "
      "WHERE (type!='index' OR tbl_name=%Q COLLATE nocase)"
      "AND   name NOT LIKE 'sqlite_%%'"
      , zDb, MASTER_NAME, zDb, zTabName, zName, (iDb==1), zTabName
  );



  sqlite3NestedParse(pParse,
      "UPDATE %Q.%s SET "
          "tbl_name = %Q, "
          "name = CASE "
            "WHEN type='table' THEN %Q "
            "WHEN name LIKE 'sqlite_autoindex%%' AND type='index' THEN "
             "'sqlite_autoindex_' || %Q || substr(name,%d+18) "
            "ELSE name END "
      "WHERE tbl_name=%Q COLLATE nocase AND "
          "(type='table' OR type='index' OR type='trigger');",
      zDb, MASTER_NAME,
      zName, zName, zName,
      nTabName, zTabName
  );





  if( sqlite3FindTable(db, "sqlite_sequence", zDb) ){
    sqlite3NestedParse(pParse,
        "UPDATE \"%w\".sqlite_sequence set name = %Q WHERE name = %Q",
        zDb, zName, pTab->zName);
  }





  if( iDb!=1 ){
    sqlite3NestedParse(pParse,
        "UPDATE sqlite_temp_master SET "
            "sql = sqlite_rename_table(%Q, type, name, sql, %Q, %Q, 1), "
            "tbl_name = "
              "CASE WHEN tbl_name=%Q COLLATE nocase AND "
              "          sqlite_rename_test(%Q, sql, type, name, 1) "
              "THEN %Q ELSE tbl_name END "
            "WHERE type IN ('view', 'trigger')"
        , zDb, zTabName, zName, zTabName, zDb, zName);
  }







  if( pVTab ){
    int i = ++pParse->nMem;
    sqlite3VdbeLoadString(v, i, zName);
    sqlite3VdbeAddOp4(v, OP_VRename, i, 0, 0,(const char*)pVTab, P4_VTAB);
  }


  renameReloadSchema(pParse, iDb);
  renameTestSchema(pParse, zDb, iDb==1);

exit_rename_table:
  sqlite3SrcListDelete(db, pSrc);
  sqlite3DbFree(db, zName);
  db->mDbFlags = savedDbFlags;
}
