
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_9__ ;
typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_12__ ;


struct TYPE_36__ {scalar_t__ busy; } ;
struct TYPE_39__ {TYPE_3__* aDb; TYPE_1__ init; } ;
typedef TYPE_4__ sqlite3 ;
typedef int Vdbe ;
struct TYPE_40__ {struct TYPE_40__* pNext; TYPE_6__* pTrig; } ;
typedef TYPE_5__ TriggerStep ;
struct TYPE_41__ {char* zName; struct TYPE_41__* pNext; int table; TYPE_12__* pTabSchema; TYPE_12__* pSchema; int pWhen; TYPE_5__* step_list; } ;
typedef TYPE_6__ Trigger ;
struct TYPE_42__ {int n; scalar_t__ z; } ;
typedef TYPE_7__ Token ;
struct TYPE_43__ {TYPE_6__* pTrigger; } ;
typedef TYPE_8__ Table ;
struct TYPE_44__ {TYPE_6__* pNewTrigger; TYPE_4__* db; int nErr; } ;
struct TYPE_38__ {TYPE_2__* pSchema; int zDbSName; } ;
struct TYPE_37__ {int trigHash; } ;
struct TYPE_35__ {int tblHash; } ;
typedef TYPE_9__ Parse ;
typedef int Hash ;
typedef int DbFixer ;


 scalar_t__ IN_RENAME_OBJECT ;
 int MASTER_NAME ;
 scalar_t__ NEVER (int ) ;
 int assert (int) ;
 int sqlite3BeginWriteOperation (TYPE_9__*,int ,int) ;
 int sqlite3ChangeCookie (TYPE_9__*,int) ;
 int sqlite3DbFree (TYPE_4__*,char*) ;
 char* sqlite3DbStrNDup (TYPE_4__*,char*,int ) ;
 int sqlite3DeleteTrigger (TYPE_4__*,TYPE_6__*) ;
 int sqlite3DeleteTriggerStep (TYPE_4__*,TYPE_5__*) ;
 scalar_t__ sqlite3FixExpr (int *,int ) ;
 int sqlite3FixInit (int *,TYPE_9__*,int,char*,TYPE_7__*) ;
 scalar_t__ sqlite3FixTriggerStep (int *,TYPE_5__*) ;
 int * sqlite3GetVdbe (TYPE_9__*) ;
 TYPE_8__* sqlite3HashFind (int *,int ) ;
 TYPE_6__* sqlite3HashInsert (int *,char*,TYPE_6__*) ;
 int sqlite3MPrintf (TYPE_4__*,char*,char*) ;
 int sqlite3NestedParse (TYPE_9__*,char*,int ,int ,char*,int ,char*) ;
 int sqlite3OomFault (TYPE_4__*) ;
 int sqlite3SchemaMutexHeld (TYPE_4__*,int,int ) ;
 int sqlite3SchemaToIndex (TYPE_4__*,TYPE_12__*) ;
 int sqlite3TokenInit (TYPE_7__*,char*) ;
 int sqlite3VdbeAddParseSchemaOp (int *,int,int ) ;
 int testcase (int) ;

void sqlite3FinishTrigger(
  Parse *pParse,
  TriggerStep *pStepList,
  Token *pAll
){
  Trigger *pTrig = pParse->pNewTrigger;
  char *zName;
  sqlite3 *db = pParse->db;
  DbFixer sFix;
  int iDb;
  Token nameToken;

  pParse->pNewTrigger = 0;
  if( NEVER(pParse->nErr) || !pTrig ) goto triggerfinish_cleanup;
  zName = pTrig->zName;
  iDb = sqlite3SchemaToIndex(pParse->db, pTrig->pSchema);
  pTrig->step_list = pStepList;
  while( pStepList ){
    pStepList->pTrig = pTrig;
    pStepList = pStepList->pNext;
  }
  sqlite3TokenInit(&nameToken, pTrig->zName);
  sqlite3FixInit(&sFix, pParse, iDb, "trigger", &nameToken);
  if( sqlite3FixTriggerStep(&sFix, pTrig->step_list)
   || sqlite3FixExpr(&sFix, pTrig->pWhen)
  ){
    goto triggerfinish_cleanup;
  }


  if( IN_RENAME_OBJECT ){
    assert( !db->init.busy );
    pParse->pNewTrigger = pTrig;
    pTrig = 0;
  }else





  if( !db->init.busy ){
    Vdbe *v;
    char *z;


    v = sqlite3GetVdbe(pParse);
    if( v==0 ) goto triggerfinish_cleanup;
    sqlite3BeginWriteOperation(pParse, 0, iDb);
    z = sqlite3DbStrNDup(db, (char*)pAll->z, pAll->n);
    testcase( z==0 );
    sqlite3NestedParse(pParse,
       "INSERT INTO %Q.%s VALUES('trigger',%Q,%Q,0,'CREATE TRIGGER %q')",
       db->aDb[iDb].zDbSName, MASTER_NAME, zName,
       pTrig->table, z);
    sqlite3DbFree(db, z);
    sqlite3ChangeCookie(pParse, iDb);
    sqlite3VdbeAddParseSchemaOp(v, iDb,
        sqlite3MPrintf(db, "type='trigger' AND name='%q'", zName));
  }

  if( db->init.busy ){
    Trigger *pLink = pTrig;
    Hash *pHash = &db->aDb[iDb].pSchema->trigHash;
    assert( sqlite3SchemaMutexHeld(db, iDb, 0) );
    pTrig = sqlite3HashInsert(pHash, zName, pTrig);
    if( pTrig ){
      sqlite3OomFault(db);
    }else if( pLink->pSchema==pLink->pTabSchema ){
      Table *pTab;
      pTab = sqlite3HashFind(&pLink->pTabSchema->tblHash, pLink->table);
      assert( pTab!=0 );
      pLink->pNext = pTab->pTrigger;
      pTab->pTrigger = pLink;
    }
  }

triggerfinish_cleanup:
  sqlite3DeleteTrigger(db, pTrig);
  assert( IN_RENAME_OBJECT || !pParse->pNewTrigger );
  sqlite3DeleteTriggerStep(db, pStepList);
}
