#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int nDb; TYPE_3__* aDb; scalar_t__ mallocFailed; } ;
typedef  TYPE_4__ sqlite3 ;
typedef  int /*<<< orphan*/  Trigger ;
struct TYPE_23__ {int checkSchema; TYPE_4__* db; } ;
struct TYPE_22__ {int nSrc; TYPE_1__* a; } ;
struct TYPE_20__ {TYPE_2__* pSchema; int /*<<< orphan*/  zDbSName; } ;
struct TYPE_19__ {int /*<<< orphan*/  trigHash; } ;
struct TYPE_18__ {char* zDatabase; char* zName; } ;
typedef  TYPE_5__ SrcList ;
typedef  TYPE_6__ Parse ;

/* Variables and functions */
 int OMIT_TEMPDB ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,char*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC6 (TYPE_6__*) ; 
 int FUNC7 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_5__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char const*) ; 

void FUNC10(Parse *pParse, SrcList *pName, int noErr){
  Trigger *pTrigger = 0;
  int i;
  const char *zDb;
  const char *zName;
  sqlite3 *db = pParse->db;

  if( db->mallocFailed ) goto drop_trigger_cleanup;
  if( SQLITE_OK!=FUNC6(pParse) ){
    goto drop_trigger_cleanup;
  }

  FUNC0( pName->nSrc==1 );
  zDb = pName->a[0].zDatabase;
  zName = pName->a[0].zName;
  FUNC0( zDb!=0 || FUNC1(db) );
  for(i=OMIT_TEMPDB; i<db->nDb; i++){
    int j = (i<2) ? i^1 : i;  /* Search TEMP before MAIN */
    if( zDb && FUNC9(db->aDb[j].zDbSName, zDb) ) continue;
    FUNC0( FUNC7(db, j, 0) );
    pTrigger = FUNC5(&(db->aDb[j].pSchema->trigHash), zName);
    if( pTrigger ) break;
  }
  if( !pTrigger ){
    if( !noErr ){
      FUNC4(pParse, "no such trigger: %S", pName, 0);
    }else{
      FUNC2(pParse, zDb);
    }
    pParse->checkSchema = 1;
    goto drop_trigger_cleanup;
  }
  FUNC3(pParse, pTrigger);

drop_trigger_cleanup:
  FUNC8(db, pName);
}