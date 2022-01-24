#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3_blob ;
struct TYPE_5__ {int /*<<< orphan*/  zDb; int /*<<< orphan*/  db; } ;
struct TYPE_4__ {int rc; int /*<<< orphan*/  zDataTbl; TYPE_2__* pConfig; } ;
typedef  TYPE_1__ Fts5Index ;
typedef  TYPE_2__ Fts5Config ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_STRUCTURE_ROWID ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC5(Fts5Index *p, int iNew){
  int rc;                              /* Return code */
  Fts5Config *pConfig = p->pConfig;    /* Configuration object */
  u8 aCookie[4];                       /* Binary representation of iNew */
  sqlite3_blob *pBlob = 0;

  FUNC0( p->rc==SQLITE_OK );
  FUNC1(aCookie, iNew);

  rc = FUNC3(pConfig->db, pConfig->zDb, p->zDataTbl, 
      "block", FTS5_STRUCTURE_ROWID, 1, &pBlob
  );
  if( rc==SQLITE_OK ){
    FUNC4(pBlob, aCookie, 4, 0);
    rc = FUNC2(pBlob);
  }

  return rc;
}