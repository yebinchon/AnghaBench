
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_54__ TYPE_9__ ;
typedef struct TYPE_53__ TYPE_8__ ;
typedef struct TYPE_52__ TYPE_7__ ;
typedef struct TYPE_51__ TYPE_6__ ;
typedef struct TYPE_50__ TYPE_5__ ;
typedef struct TYPE_49__ TYPE_4__ ;
typedef struct TYPE_48__ TYPE_3__ ;
typedef struct TYPE_47__ TYPE_2__ ;
typedef struct TYPE_46__ TYPE_20__ ;
typedef struct TYPE_45__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_45__ {scalar_t__ busy; int iDb; int orphanTrigger; } ;
struct TYPE_49__ {TYPE_3__* aDb; TYPE_1__ init; scalar_t__ mallocFailed; } ;
typedef TYPE_4__ sqlite3 ;
struct TYPE_50__ {char* zName; int * pColumns; int * pWhen; int table; int tr_tm; scalar_t__ op; TYPE_20__* pTabSchema; TYPE_20__* pSchema; } ;
typedef TYPE_5__ Trigger ;
struct TYPE_51__ {scalar_t__ n; } ;
typedef TYPE_6__ Token ;
struct TYPE_52__ {TYPE_20__* pSchema; int zName; scalar_t__ pSelect; } ;
typedef TYPE_7__ Table ;
struct TYPE_54__ {TYPE_5__* pNewTrigger; TYPE_4__* db; } ;
struct TYPE_53__ {int nSrc; TYPE_2__* a; } ;
struct TYPE_48__ {char* zDbSName; TYPE_20__* pSchema; } ;
struct TYPE_47__ {char* zDatabase; int zName; } ;
struct TYPE_46__ {int trigHash; } ;
typedef TYPE_8__ SrcList ;
typedef TYPE_9__ Parse ;
typedef int IdList ;
typedef int Expr ;
typedef int DbFixer ;


 int EXPRDUP_REDUCE ;
 scalar_t__ IN_RENAME_OBJECT ;
 scalar_t__ IsVirtual (TYPE_7__*) ;
 char* SCHEMA_TABLE (int) ;
 int SQLITE_CREATE_TEMP_TRIGGER ;
 int SQLITE_CREATE_TRIGGER ;
 int SQLITE_INSERT ;
 scalar_t__ SQLITE_OK ;
 int TK_BEFORE ;
 int TK_DELETE ;
 int TK_INSERT ;
 int TK_INSTEAD ;
 int TK_UPDATE ;
 int TRIGGER_AFTER ;
 int TRIGGER_BEFORE ;
 int assert (int) ;
 scalar_t__ sqlite3AuthCheck (TYPE_9__*,int,char*,int ,char const*) ;
 scalar_t__ sqlite3CheckObjectName (TYPE_9__*,char*) ;
 int sqlite3CodeVerifySchema (TYPE_9__*,int) ;
 int sqlite3DbFree (TYPE_4__*,char*) ;
 scalar_t__ sqlite3DbMallocZero (TYPE_4__*,int) ;
 int sqlite3DbStrDup (TYPE_4__*,int ) ;
 int sqlite3DeleteTrigger (TYPE_4__*,TYPE_5__*) ;
 int sqlite3ErrorMsg (TYPE_9__*,char*,...) ;
 int sqlite3ExprDelete (TYPE_4__*,int *) ;
 int * sqlite3ExprDup (TYPE_4__*,int *,int ) ;
 int sqlite3FixInit (int *,TYPE_9__*,int,char*,TYPE_6__*) ;
 scalar_t__ sqlite3FixSrcList (int *,TYPE_8__*) ;
 scalar_t__ sqlite3HashFind (int *,char*) ;
 int sqlite3IdListDelete (TYPE_4__*,int *) ;
 char* sqlite3NameFromToken (TYPE_4__*,TYPE_6__*) ;
 int sqlite3RenameTokenRemap (TYPE_9__*,int ,int ) ;
 int sqlite3SchemaMutexHeld (TYPE_4__*,int,int ) ;
 int sqlite3SchemaToIndex (TYPE_4__*,TYPE_20__*) ;
 int sqlite3SrcListDelete (TYPE_4__*,TYPE_8__*) ;
 TYPE_7__* sqlite3SrcListLookup (TYPE_9__*,TYPE_8__*) ;
 scalar_t__ sqlite3StrNICmp (int ,char*,int) ;
 int sqlite3TwoPartName (TYPE_9__*,TYPE_6__*,TYPE_6__*,TYPE_6__**) ;

void sqlite3BeginTrigger(
  Parse *pParse,
  Token *pName1,
  Token *pName2,
  int tr_tm,
  int op,
  IdList *pColumns,
  SrcList *pTableName,
  Expr *pWhen,
  int isTemp,
  int noErr
){
  Trigger *pTrigger = 0;
  Table *pTab;
  char *zName = 0;
  sqlite3 *db = pParse->db;
  int iDb;
  Token *pName;
  DbFixer sFix;

  assert( pName1!=0 );
  assert( pName2!=0 );
  assert( op==TK_INSERT || op==TK_UPDATE || op==TK_DELETE );
  assert( op>0 && op<0xff );
  if( isTemp ){

    if( pName2->n>0 ){
      sqlite3ErrorMsg(pParse, "temporary trigger may not have qualified name");
      goto trigger_cleanup;
    }
    iDb = 1;
    pName = pName1;
  }else{

    iDb = sqlite3TwoPartName(pParse, pName1, pName2, &pName);
    if( iDb<0 ){
      goto trigger_cleanup;
    }
  }
  if( !pTableName || db->mallocFailed ){
    goto trigger_cleanup;
  }
  if( db->init.busy && iDb!=1 ){
    sqlite3DbFree(db, pTableName->a[0].zDatabase);
    pTableName->a[0].zDatabase = 0;
  }






  pTab = sqlite3SrcListLookup(pParse, pTableName);
  if( db->init.busy==0 && pName2->n==0 && pTab
        && pTab->pSchema==db->aDb[1].pSchema ){
    iDb = 1;
  }


  if( db->mallocFailed ) goto trigger_cleanup;
  assert( pTableName->nSrc==1 );
  sqlite3FixInit(&sFix, pParse, iDb, "trigger", pName);
  if( sqlite3FixSrcList(&sFix, pTableName) ){
    goto trigger_cleanup;
  }
  pTab = sqlite3SrcListLookup(pParse, pTableName);
  if( !pTab ){

    if( db->init.iDb==1 ){
      db->init.orphanTrigger = 1;
    }
    goto trigger_cleanup;
  }
  if( IsVirtual(pTab) ){
    sqlite3ErrorMsg(pParse, "cannot create triggers on virtual tables");
    goto trigger_cleanup;
  }



  zName = sqlite3NameFromToken(db, pName);
  if( !zName || SQLITE_OK!=sqlite3CheckObjectName(pParse, zName) ){
    goto trigger_cleanup;
  }
  assert( sqlite3SchemaMutexHeld(db, iDb, 0) );
  if( !IN_RENAME_OBJECT ){
    if( sqlite3HashFind(&(db->aDb[iDb].pSchema->trigHash),zName) ){
      if( !noErr ){
        sqlite3ErrorMsg(pParse, "trigger %T already exists", pName);
      }else{
        assert( !db->init.busy );
        sqlite3CodeVerifySchema(pParse, iDb);
      }
      goto trigger_cleanup;
    }
  }


  if( sqlite3StrNICmp(pTab->zName, "sqlite_", 7)==0 ){
    sqlite3ErrorMsg(pParse, "cannot create trigger on system table");
    goto trigger_cleanup;
  }




  if( pTab->pSelect && tr_tm!=TK_INSTEAD ){
    sqlite3ErrorMsg(pParse, "cannot create %s trigger on view: %S",
        (tr_tm == TK_BEFORE)?"BEFORE":"AFTER", pTableName, 0);
    goto trigger_cleanup;
  }
  if( !pTab->pSelect && tr_tm==TK_INSTEAD ){
    sqlite3ErrorMsg(pParse, "cannot create INSTEAD OF"
        " trigger on table: %S", pTableName, 0);
    goto trigger_cleanup;
  }


  if( !IN_RENAME_OBJECT ){
    int iTabDb = sqlite3SchemaToIndex(db, pTab->pSchema);
    int code = SQLITE_CREATE_TRIGGER;
    const char *zDb = db->aDb[iTabDb].zDbSName;
    const char *zDbTrig = isTemp ? db->aDb[1].zDbSName : zDb;
    if( iTabDb==1 || isTemp ) code = SQLITE_CREATE_TEMP_TRIGGER;
    if( sqlite3AuthCheck(pParse, code, zName, pTab->zName, zDbTrig) ){
      goto trigger_cleanup;
    }
    if( sqlite3AuthCheck(pParse, SQLITE_INSERT, SCHEMA_TABLE(iTabDb),0,zDb)){
      goto trigger_cleanup;
    }
  }







  if (tr_tm == TK_INSTEAD){
    tr_tm = TK_BEFORE;
  }


  pTrigger = (Trigger*)sqlite3DbMallocZero(db, sizeof(Trigger));
  if( pTrigger==0 ) goto trigger_cleanup;
  pTrigger->zName = zName;
  zName = 0;
  pTrigger->table = sqlite3DbStrDup(db, pTableName->a[0].zName);
  pTrigger->pSchema = db->aDb[iDb].pSchema;
  pTrigger->pTabSchema = pTab->pSchema;
  pTrigger->op = (u8)op;
  pTrigger->tr_tm = tr_tm==TK_BEFORE ? TRIGGER_BEFORE : TRIGGER_AFTER;
  if( IN_RENAME_OBJECT ){
    sqlite3RenameTokenRemap(pParse, pTrigger->table, pTableName->a[0].zName);
    pTrigger->pWhen = pWhen;
    pWhen = 0;
  }else{
    pTrigger->pWhen = sqlite3ExprDup(db, pWhen, EXPRDUP_REDUCE);
  }
  pTrigger->pColumns = pColumns;
  pColumns = 0;
  assert( pParse->pNewTrigger==0 );
  pParse->pNewTrigger = pTrigger;

trigger_cleanup:
  sqlite3DbFree(db, zName);
  sqlite3SrcListDelete(db, pTableName);
  sqlite3IdListDelete(db, pColumns);
  sqlite3ExprDelete(db, pWhen);
  if( !pParse->pNewTrigger ){
    sqlite3DeleteTrigger(db, pTrigger);
  }else{
    assert( pParse->pNewTrigger==pTrigger );
  }
}
