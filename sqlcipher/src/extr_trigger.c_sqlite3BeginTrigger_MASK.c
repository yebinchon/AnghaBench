#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_54__   TYPE_9__ ;
typedef  struct TYPE_53__   TYPE_8__ ;
typedef  struct TYPE_52__   TYPE_7__ ;
typedef  struct TYPE_51__   TYPE_6__ ;
typedef  struct TYPE_50__   TYPE_5__ ;
typedef  struct TYPE_49__   TYPE_4__ ;
typedef  struct TYPE_48__   TYPE_3__ ;
typedef  struct TYPE_47__   TYPE_2__ ;
typedef  struct TYPE_46__   TYPE_20__ ;
typedef  struct TYPE_45__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_45__ {scalar_t__ busy; int iDb; int orphanTrigger; } ;
struct TYPE_49__ {TYPE_3__* aDb; TYPE_1__ init; scalar_t__ mallocFailed; } ;
typedef  TYPE_4__ sqlite3 ;
struct TYPE_50__ {char* zName; int /*<<< orphan*/ * pColumns; int /*<<< orphan*/ * pWhen; int /*<<< orphan*/  table; int /*<<< orphan*/  tr_tm; scalar_t__ op; TYPE_20__* pTabSchema; TYPE_20__* pSchema; } ;
typedef  TYPE_5__ Trigger ;
struct TYPE_51__ {scalar_t__ n; } ;
typedef  TYPE_6__ Token ;
struct TYPE_52__ {TYPE_20__* pSchema; int /*<<< orphan*/  zName; scalar_t__ pSelect; } ;
typedef  TYPE_7__ Table ;
struct TYPE_54__ {TYPE_5__* pNewTrigger; TYPE_4__* db; } ;
struct TYPE_53__ {int nSrc; TYPE_2__* a; } ;
struct TYPE_48__ {char* zDbSName; TYPE_20__* pSchema; } ;
struct TYPE_47__ {char* zDatabase; int /*<<< orphan*/  zName; } ;
struct TYPE_46__ {int /*<<< orphan*/  trigHash; } ;
typedef  TYPE_8__ SrcList ;
typedef  TYPE_9__ Parse ;
typedef  int /*<<< orphan*/  IdList ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  DbFixer ;

/* Variables and functions */
 int /*<<< orphan*/  EXPRDUP_REDUCE ; 
 scalar_t__ IN_RENAME_OBJECT ; 
 scalar_t__ FUNC0 (TYPE_7__*) ; 
 char* FUNC1 (int) ; 
 int SQLITE_CREATE_TEMP_TRIGGER ; 
 int SQLITE_CREATE_TRIGGER ; 
 int SQLITE_INSERT ; 
 scalar_t__ SQLITE_OK ; 
 int TK_BEFORE ; 
 int TK_DELETE ; 
 int TK_INSERT ; 
 int TK_INSTEAD ; 
 int TK_UPDATE ; 
 int /*<<< orphan*/  TRIGGER_AFTER ; 
 int /*<<< orphan*/  TRIGGER_BEFORE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_9__*,int,char*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (TYPE_9__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_9__*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_9__*,int,char*,TYPE_6__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 char* FUNC17 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC20 (TYPE_4__*,TYPE_20__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,TYPE_8__*) ; 
 TYPE_7__* FUNC22 (TYPE_9__*,TYPE_8__*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC24 (TYPE_9__*,TYPE_6__*,TYPE_6__*,TYPE_6__**) ; 

void FUNC25(
  Parse *pParse,      /* The parse context of the CREATE TRIGGER statement */
  Token *pName1,      /* The name of the trigger */
  Token *pName2,      /* The name of the trigger */
  int tr_tm,          /* One of TK_BEFORE, TK_AFTER, TK_INSTEAD */
  int op,             /* One of TK_INSERT, TK_UPDATE, TK_DELETE */
  IdList *pColumns,   /* column list if this is an UPDATE OF trigger */
  SrcList *pTableName,/* The name of the table/view the trigger applies to */
  Expr *pWhen,        /* WHEN clause */
  int isTemp,         /* True if the TEMPORARY keyword is present */
  int noErr           /* Suppress errors if the trigger already exists */
){
  Trigger *pTrigger = 0;  /* The new trigger */
  Table *pTab;            /* Table that the trigger fires off of */
  char *zName = 0;        /* Name of the trigger */
  sqlite3 *db = pParse->db;  /* The database connection */
  int iDb;                /* The database to store the trigger in */
  Token *pName;           /* The unqualified db name */
  DbFixer sFix;           /* State vector for the DB fixer */

  FUNC2( pName1!=0 );   /* pName1->z might be NULL, but not pName1 itself */
  FUNC2( pName2!=0 );
  FUNC2( op==TK_INSERT || op==TK_UPDATE || op==TK_DELETE );
  FUNC2( op>0 && op<0xff );
  if( isTemp ){
    /* If TEMP was specified, then the trigger name may not be qualified. */
    if( pName2->n>0 ){
      FUNC10(pParse, "temporary trigger may not have qualified name");
      goto trigger_cleanup;
    }
    iDb = 1;
    pName = pName1;
  }else{
    /* Figure out the db that the trigger will be created in */
    iDb = FUNC24(pParse, pName1, pName2, &pName);
    if( iDb<0 ){
      goto trigger_cleanup;
    }
  }
  if( !pTableName || db->mallocFailed ){
    goto trigger_cleanup;
  }

  /* A long-standing parser bug is that this syntax was allowed:
  **
  **    CREATE TRIGGER attached.demo AFTER INSERT ON attached.tab ....
  **                                                 ^^^^^^^^
  **
  ** To maintain backwards compatibility, ignore the database
  ** name on pTableName if we are reparsing out of SQLITE_MASTER.
  */
  if( db->init.busy && iDb!=1 ){
    FUNC6(db, pTableName->a[0].zDatabase);
    pTableName->a[0].zDatabase = 0;
  }

  /* If the trigger name was unqualified, and the table is a temp table,
  ** then set iDb to 1 to create the trigger in the temporary database.
  ** If sqlite3SrcListLookup() returns 0, indicating the table does not
  ** exist, the error is caught by the block below.
  */
  pTab = FUNC22(pParse, pTableName);
  if( db->init.busy==0 && pName2->n==0 && pTab
        && pTab->pSchema==db->aDb[1].pSchema ){
    iDb = 1;
  }

  /* Ensure the table name matches database name and that the table exists */
  if( db->mallocFailed ) goto trigger_cleanup;
  FUNC2( pTableName->nSrc==1 );
  FUNC13(&sFix, pParse, iDb, "trigger", pName);
  if( FUNC14(&sFix, pTableName) ){
    goto trigger_cleanup;
  }
  pTab = FUNC22(pParse, pTableName);
  if( !pTab ){
    /* The table does not exist. */
    if( db->init.iDb==1 ){
      /* Ticket #3810.
      ** Normally, whenever a table is dropped, all associated triggers are
      ** dropped too.  But if a TEMP trigger is created on a non-TEMP table
      ** and the table is dropped by a different database connection, the
      ** trigger is not visible to the database connection that does the
      ** drop so the trigger cannot be dropped.  This results in an
      ** "orphaned trigger" - a trigger whose associated table is missing.
      */
      db->init.orphanTrigger = 1;
    }
    goto trigger_cleanup;
  }
  if( FUNC0(pTab) ){
    FUNC10(pParse, "cannot create triggers on virtual tables");
    goto trigger_cleanup;
  }

  /* Check that the trigger name is not reserved and that no trigger of the
  ** specified name exists */
  zName = FUNC17(db, pName);
  if( !zName || SQLITE_OK!=FUNC4(pParse, zName) ){
    goto trigger_cleanup;
  }
  FUNC2( FUNC19(db, iDb, 0) );
  if( !IN_RENAME_OBJECT ){
    if( FUNC15(&(db->aDb[iDb].pSchema->trigHash),zName) ){
      if( !noErr ){
        FUNC10(pParse, "trigger %T already exists", pName);
      }else{
        FUNC2( !db->init.busy );
        FUNC5(pParse, iDb);
      }
      goto trigger_cleanup;
    }
  }

  /* Do not create a trigger on a system table */
  if( FUNC23(pTab->zName, "sqlite_", 7)==0 ){
    FUNC10(pParse, "cannot create trigger on system table");
    goto trigger_cleanup;
  }

  /* INSTEAD of triggers are only for views and views only support INSTEAD
  ** of triggers.
  */
  if( pTab->pSelect && tr_tm!=TK_INSTEAD ){
    FUNC10(pParse, "cannot create %s trigger on view: %S", 
        (tr_tm == TK_BEFORE)?"BEFORE":"AFTER", pTableName, 0);
    goto trigger_cleanup;
  }
  if( !pTab->pSelect && tr_tm==TK_INSTEAD ){
    FUNC10(pParse, "cannot create INSTEAD OF"
        " trigger on table: %S", pTableName, 0);
    goto trigger_cleanup;
  }

#ifndef SQLITE_OMIT_AUTHORIZATION
  if( !IN_RENAME_OBJECT ){
    int iTabDb = FUNC20(db, pTab->pSchema);
    int code = SQLITE_CREATE_TRIGGER;
    const char *zDb = db->aDb[iTabDb].zDbSName;
    const char *zDbTrig = isTemp ? db->aDb[1].zDbSName : zDb;
    if( iTabDb==1 || isTemp ) code = SQLITE_CREATE_TEMP_TRIGGER;
    if( FUNC3(pParse, code, zName, pTab->zName, zDbTrig) ){
      goto trigger_cleanup;
    }
    if( FUNC3(pParse, SQLITE_INSERT, FUNC1(iTabDb),0,zDb)){
      goto trigger_cleanup;
    }
  }
#endif

  /* INSTEAD OF triggers can only appear on views and BEFORE triggers
  ** cannot appear on views.  So we might as well translate every
  ** INSTEAD OF trigger into a BEFORE trigger.  It simplifies code
  ** elsewhere.
  */
  if (tr_tm == TK_INSTEAD){
    tr_tm = TK_BEFORE;
  }

  /* Build the Trigger object */
  pTrigger = (Trigger*)FUNC7(db, sizeof(Trigger));
  if( pTrigger==0 ) goto trigger_cleanup;
  pTrigger->zName = zName;
  zName = 0;
  pTrigger->table = FUNC8(db, pTableName->a[0].zName);
  pTrigger->pSchema = db->aDb[iDb].pSchema;
  pTrigger->pTabSchema = pTab->pSchema;
  pTrigger->op = (u8)op;
  pTrigger->tr_tm = tr_tm==TK_BEFORE ? TRIGGER_BEFORE : TRIGGER_AFTER;
  if( IN_RENAME_OBJECT ){
    FUNC18(pParse, pTrigger->table, pTableName->a[0].zName);
    pTrigger->pWhen = pWhen;
    pWhen = 0;
  }else{
    pTrigger->pWhen = FUNC12(db, pWhen, EXPRDUP_REDUCE);
  }
  pTrigger->pColumns = pColumns;
  pColumns = 0;
  FUNC2( pParse->pNewTrigger==0 );
  pParse->pNewTrigger = pTrigger;

trigger_cleanup:
  FUNC6(db, zName);
  FUNC21(db, pTableName);
  FUNC16(db, pColumns);
  FUNC11(db, pWhen);
  if( !pParse->pNewTrigger ){
    FUNC9(db, pTrigger);
  }else{
    FUNC2( pParse->pNewTrigger==pTrigger );
  }
}