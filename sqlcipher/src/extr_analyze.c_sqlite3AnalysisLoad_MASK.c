#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  bDisable; } ;
struct TYPE_22__ {int nDb; TYPE_2__ lookaside; TYPE_1__* aDb; } ;
typedef  TYPE_3__ sqlite3 ;
struct TYPE_23__ {int /*<<< orphan*/  zDatabase; TYPE_3__* db; } ;
typedef  TYPE_4__ analysisInfo ;
struct TYPE_24__ {int /*<<< orphan*/  tabFlags; } ;
typedef  TYPE_5__ Table ;
struct TYPE_26__ {scalar_t__ aiRowEst; scalar_t__ hasStat1; scalar_t__ aSample; } ;
struct TYPE_25__ {int /*<<< orphan*/  idxHash; int /*<<< orphan*/  tblHash; } ;
struct TYPE_20__ {scalar_t__ pBt; int /*<<< orphan*/  zDbSName; TYPE_6__* pSchema; } ;
typedef  TYPE_6__ Schema ;
typedef  TYPE_7__ Index ;
typedef  int /*<<< orphan*/  HashElem ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  TF_HasStat1 ; 
 int /*<<< orphan*/  analysisLoader ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_7__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*,char*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(sqlite3 *db, int iDb){
  analysisInfo sInfo;
  HashElem *i;
  char *zSql;
  int rc = SQLITE_OK;
  Schema *pSchema = db->aDb[iDb].pSchema;

  FUNC0( iDb>=0 && iDb<db->nDb );
  FUNC0( db->aDb[iDb].pBt!=0 );

  /* Clear any prior statistics */
  FUNC0( FUNC8(db, iDb, 0) );
  for(i=FUNC12(&pSchema->tblHash); i; i=FUNC13(i)){
    Table *pTab = FUNC11(i);
    pTab->tabFlags &= ~TF_HasStat1;
  }
  for(i=FUNC12(&pSchema->idxHash); i; i=FUNC13(i)){
    Index *pIdx = FUNC11(i);
    pIdx->hasStat1 = 0;
#ifdef SQLITE_ENABLE_STAT3_OR_STAT4
    sqlite3DeleteIndexSamples(db, pIdx);
    pIdx->aSample = 0;
#endif
  }

  /* Load new statistics out of the sqlite_stat1 table */
  sInfo.db = db;
  sInfo.zDatabase = db->aDb[iDb].zDbSName;
  if( FUNC5(db, "sqlite_stat1", sInfo.zDatabase)!=0 ){
    zSql = FUNC6(db, 
        "SELECT tbl,idx,stat FROM %Q.sqlite_stat1", sInfo.zDatabase);
    if( zSql==0 ){
      rc = SQLITE_NOMEM_BKPT;
    }else{
      rc = FUNC9(db, zSql, analysisLoader, &sInfo, 0);
      FUNC2(db, zSql);
    }
  }

  /* Set appropriate defaults on all indexes not in the sqlite_stat1 table */
  FUNC0( FUNC8(db, iDb, 0) );
  for(i=FUNC12(&pSchema->idxHash); i; i=FUNC13(i)){
    Index *pIdx = FUNC11(i);
    if( !pIdx->hasStat1 ) FUNC3(pIdx);
  }

  /* Load the statistics from the sqlite_stat4 table. */
#ifdef SQLITE_ENABLE_STAT3_OR_STAT4
  if( rc==SQLITE_OK ){
    db->lookaside.bDisable++;
    rc = loadStat4(db, sInfo.zDatabase);
    db->lookaside.bDisable--;
  }
  for(i=sqliteHashFirst(&pSchema->idxHash); i; i=sqliteHashNext(i)){
    Index *pIdx = sqliteHashData(i);
    sqlite3_free(pIdx->aiRowEst);
    pIdx->aiRowEst = 0;
  }
#endif

  if( rc==SQLITE_NOMEM ){
    FUNC7(db);
  }
  return rc;
}