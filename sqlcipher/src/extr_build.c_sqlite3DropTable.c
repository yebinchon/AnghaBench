
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_6__ ;
typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_1__ ;
typedef struct TYPE_34__ TYPE_17__ ;
typedef struct TYPE_33__ TYPE_15__ ;


struct TYPE_37__ {int nDb; TYPE_1__* aDb; int suppressErr; scalar_t__ mallocFailed; } ;
typedef TYPE_3__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_38__ {char const* zName; scalar_t__ pSelect; int pSchema; } ;
typedef TYPE_4__ Table ;
struct TYPE_40__ {scalar_t__ nErr; TYPE_3__* db; } ;
struct TYPE_39__ {int nSrc; TYPE_15__* a; } ;
struct TYPE_36__ {char* zName; } ;
struct TYPE_35__ {char* zDbSName; } ;
struct TYPE_34__ {TYPE_2__* pMod; } ;
struct TYPE_33__ {int zDatabase; } ;
typedef TYPE_5__ SrcList ;
typedef TYPE_6__ Parse ;


 scalar_t__ IsVirtual (TYPE_4__*) ;
 int LOCATE_VIEW ;
 int OMIT_TEMPDB ;
 char* SCHEMA_TABLE (int) ;
 int SQLITE_DELETE ;
 int SQLITE_DROP_TABLE ;
 int SQLITE_DROP_TEMP_TABLE ;
 int SQLITE_DROP_TEMP_VIEW ;
 int SQLITE_DROP_VIEW ;
 int SQLITE_DROP_VTABLE ;
 int assert (int) ;
 scalar_t__ sqlite3AuthCheck (TYPE_6__*,int,char const*,char const*,char const*) ;
 int sqlite3BeginWriteOperation (TYPE_6__*,int,int) ;
 int sqlite3ClearStatTables (TYPE_6__*,int,char*,char const*) ;
 int sqlite3CodeDropTable (TYPE_6__*,TYPE_4__*,int,int) ;
 int sqlite3CodeVerifyNamedSchema (TYPE_6__*,int ) ;
 int sqlite3ErrorMsg (TYPE_6__*,char*,char const*) ;
 int sqlite3FkDropTable (TYPE_6__*,TYPE_5__*,TYPE_4__*) ;
 TYPE_17__* sqlite3GetVTable (TYPE_3__*,TYPE_4__*) ;
 int * sqlite3GetVdbe (TYPE_6__*) ;
 TYPE_4__* sqlite3LocateTableItem (TYPE_6__*,int,TYPE_15__*) ;
 scalar_t__ sqlite3ReadSchema (TYPE_6__*) ;
 int sqlite3SchemaToIndex (TYPE_3__*,int ) ;
 int sqlite3SrcListDelete (TYPE_3__*,TYPE_5__*) ;
 scalar_t__ sqlite3StrNICmp (char const*,char*,int) ;
 scalar_t__ sqlite3ViewGetColumnNames (TYPE_6__*,TYPE_4__*) ;

void sqlite3DropTable(Parse *pParse, SrcList *pName, int isView, int noErr){
  Table *pTab;
  Vdbe *v;
  sqlite3 *db = pParse->db;
  int iDb;

  if( db->mallocFailed ){
    goto exit_drop_table;
  }
  assert( pParse->nErr==0 );
  assert( pName->nSrc==1 );
  if( sqlite3ReadSchema(pParse) ) goto exit_drop_table;
  if( noErr ) db->suppressErr++;
  assert( isView==0 || isView==LOCATE_VIEW );
  pTab = sqlite3LocateTableItem(pParse, isView, &pName->a[0]);
  if( noErr ) db->suppressErr--;

  if( pTab==0 ){
    if( noErr ) sqlite3CodeVerifyNamedSchema(pParse, pName->a[0].zDatabase);
    goto exit_drop_table;
  }
  iDb = sqlite3SchemaToIndex(db, pTab->pSchema);
  assert( iDb>=0 && iDb<db->nDb );




  if( IsVirtual(pTab) && sqlite3ViewGetColumnNames(pParse, pTab) ){
    goto exit_drop_table;
  }

  {
    int code;
    const char *zTab = SCHEMA_TABLE(iDb);
    const char *zDb = db->aDb[iDb].zDbSName;
    const char *zArg2 = 0;
    if( sqlite3AuthCheck(pParse, SQLITE_DELETE, zTab, 0, zDb)){
      goto exit_drop_table;
    }
    if( isView ){
      if( !OMIT_TEMPDB && iDb==1 ){
        code = SQLITE_DROP_TEMP_VIEW;
      }else{
        code = SQLITE_DROP_VIEW;
      }

    }else if( IsVirtual(pTab) ){
      code = SQLITE_DROP_VTABLE;
      zArg2 = sqlite3GetVTable(db, pTab)->pMod->zName;

    }else{
      if( !OMIT_TEMPDB && iDb==1 ){
        code = SQLITE_DROP_TEMP_TABLE;
      }else{
        code = SQLITE_DROP_TABLE;
      }
    }
    if( sqlite3AuthCheck(pParse, code, pTab->zName, zArg2, zDb) ){
      goto exit_drop_table;
    }
    if( sqlite3AuthCheck(pParse, SQLITE_DELETE, pTab->zName, 0, zDb) ){
      goto exit_drop_table;
    }
  }

  if( sqlite3StrNICmp(pTab->zName, "sqlite_", 7)==0
    && sqlite3StrNICmp(pTab->zName, "sqlite_stat", 11)!=0 ){
    sqlite3ErrorMsg(pParse, "table %s may not be dropped", pTab->zName);
    goto exit_drop_table;
  }





  if( isView && pTab->pSelect==0 ){
    sqlite3ErrorMsg(pParse, "use DROP TABLE to delete table %s", pTab->zName);
    goto exit_drop_table;
  }
  if( !isView && pTab->pSelect ){
    sqlite3ErrorMsg(pParse, "use DROP VIEW to delete view %s", pTab->zName);
    goto exit_drop_table;
  }





  v = sqlite3GetVdbe(pParse);
  if( v ){
    sqlite3BeginWriteOperation(pParse, 1, iDb);
    if( !isView ){
      sqlite3ClearStatTables(pParse, iDb, "tbl", pTab->zName);
      sqlite3FkDropTable(pParse, pName, pTab);
    }
    sqlite3CodeDropTable(pParse, pTab, iDb, isView);
  }

exit_drop_table:
  sqlite3SrcListDelete(db, pName);
}
