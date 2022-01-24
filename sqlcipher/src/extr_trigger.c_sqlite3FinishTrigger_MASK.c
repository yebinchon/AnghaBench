#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_44__   TYPE_9__ ;
typedef  struct TYPE_43__   TYPE_8__ ;
typedef  struct TYPE_42__   TYPE_7__ ;
typedef  struct TYPE_41__   TYPE_6__ ;
typedef  struct TYPE_40__   TYPE_5__ ;
typedef  struct TYPE_39__   TYPE_4__ ;
typedef  struct TYPE_38__   TYPE_3__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_12__ ;

/* Type definitions */
struct TYPE_36__ {scalar_t__ busy; } ;
struct TYPE_39__ {TYPE_3__* aDb; TYPE_1__ init; } ;
typedef  TYPE_4__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_40__ {struct TYPE_40__* pNext; TYPE_6__* pTrig; } ;
typedef  TYPE_5__ TriggerStep ;
struct TYPE_41__ {char* zName; struct TYPE_41__* pNext; int /*<<< orphan*/  table; TYPE_12__* pTabSchema; TYPE_12__* pSchema; int /*<<< orphan*/  pWhen; TYPE_5__* step_list; } ;
typedef  TYPE_6__ Trigger ;
struct TYPE_42__ {int /*<<< orphan*/  n; scalar_t__ z; } ;
typedef  TYPE_7__ Token ;
struct TYPE_43__ {TYPE_6__* pTrigger; } ;
typedef  TYPE_8__ Table ;
struct TYPE_44__ {TYPE_6__* pNewTrigger; TYPE_4__* db; int /*<<< orphan*/  nErr; } ;
struct TYPE_38__ {TYPE_2__* pSchema; int /*<<< orphan*/  zDbSName; } ;
struct TYPE_37__ {int /*<<< orphan*/  trigHash; } ;
struct TYPE_35__ {int /*<<< orphan*/  tblHash; } ;
typedef  TYPE_9__ Parse ;
typedef  int /*<<< orphan*/  Hash ;
typedef  int /*<<< orphan*/  DbFixer ;

/* Variables and functions */
 scalar_t__ IN_RENAME_OBJECT ; 
 int /*<<< orphan*/  MASTER_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*) ; 
 char* FUNC5 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_5__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_9__*,int,char*,TYPE_7__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_9__*) ; 
 TYPE_8__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC13 (int /*<<< orphan*/ *,char*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_9__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int FUNC17 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_4__*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

void FUNC22(
  Parse *pParse,          /* Parser context */
  TriggerStep *pStepList, /* The triggered program */
  Token *pAll             /* Token that describes the complete CREATE TRIGGER */
){
  Trigger *pTrig = pParse->pNewTrigger;   /* Trigger being finished */
  char *zName;                            /* Name of trigger */
  sqlite3 *db = pParse->db;               /* The database */
  DbFixer sFix;                           /* Fixer object */
  int iDb;                                /* Database containing the trigger */
  Token nameToken;                        /* Trigger name for error reporting */

  pParse->pNewTrigger = 0;
  if( FUNC0(pParse->nErr) || !pTrig ) goto triggerfinish_cleanup;
  zName = pTrig->zName;
  iDb = FUNC18(pParse->db, pTrig->pSchema);
  pTrig->step_list = pStepList;
  while( pStepList ){
    pStepList->pTrig = pTrig;
    pStepList = pStepList->pNext;
  }
  FUNC19(&nameToken, pTrig->zName);
  FUNC9(&sFix, pParse, iDb, "trigger", &nameToken);
  if( FUNC10(&sFix, pTrig->step_list) 
   || FUNC8(&sFix, pTrig->pWhen) 
  ){
    goto triggerfinish_cleanup;
  }

#ifndef SQLITE_OMIT_ALTERTABLE
  if( IN_RENAME_OBJECT ){
    FUNC1( !db->init.busy );
    pParse->pNewTrigger = pTrig;
    pTrig = 0;
  }else
#endif

  /* if we are not initializing,
  ** build the sqlite_master entry
  */
  if( !db->init.busy ){
    Vdbe *v;
    char *z;

    /* Make an entry in the sqlite_master table */
    v = FUNC11(pParse);
    if( v==0 ) goto triggerfinish_cleanup;
    FUNC2(pParse, 0, iDb);
    z = FUNC5(db, (char*)pAll->z, pAll->n);
    FUNC21( z==0 );
    FUNC15(pParse,
       "INSERT INTO %Q.%s VALUES('trigger',%Q,%Q,0,'CREATE TRIGGER %q')",
       db->aDb[iDb].zDbSName, MASTER_NAME, zName,
       pTrig->table, z);
    FUNC4(db, z);
    FUNC3(pParse, iDb);
    FUNC20(v, iDb,
        FUNC14(db, "type='trigger' AND name='%q'", zName));
  }

  if( db->init.busy ){
    Trigger *pLink = pTrig;
    Hash *pHash = &db->aDb[iDb].pSchema->trigHash;
    FUNC1( FUNC17(db, iDb, 0) );
    pTrig = FUNC13(pHash, zName, pTrig);
    if( pTrig ){
      FUNC16(db);
    }else if( pLink->pSchema==pLink->pTabSchema ){
      Table *pTab;
      pTab = FUNC12(&pLink->pTabSchema->tblHash, pLink->table);
      FUNC1( pTab!=0 );
      pLink->pNext = pTab->pTrigger;
      pTab->pTrigger = pLink;
    }
  }

triggerfinish_cleanup:
  FUNC6(db, pTrig);
  FUNC1( IN_RENAME_OBJECT || !pParse->pNewTrigger );
  FUNC7(db, pStepList);
}