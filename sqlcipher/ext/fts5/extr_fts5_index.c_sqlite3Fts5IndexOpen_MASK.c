#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  zName; } ;
struct TYPE_8__ {int rc; scalar_t__ zDataTbl; int /*<<< orphan*/  nWorkUnit; TYPE_2__* pConfig; } ;
typedef  TYPE_1__ Fts5Index ;
typedef  TYPE_2__ Fts5Config ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_WORK_UNIT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,char*,char*,int,char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int*,int) ; 
 scalar_t__ FUNC5 (int*,char*,int /*<<< orphan*/ ) ; 

int FUNC6(
  Fts5Config *pConfig, 
  int bCreate, 
  Fts5Index **pp,
  char **pzErr
){
  int rc = SQLITE_OK;
  Fts5Index *p;                   /* New object */

  *pp = p = (Fts5Index*)FUNC4(&rc, sizeof(Fts5Index));
  if( rc==SQLITE_OK ){
    p->pConfig = pConfig;
    p->nWorkUnit = FTS5_WORK_UNIT;
    p->zDataTbl = FUNC5(&rc, "%s_data", pConfig->zName);
    if( p->zDataTbl && bCreate ){
      rc = FUNC1(
          pConfig, "data", "id INTEGER PRIMARY KEY, block BLOB", 0, pzErr
      );
      if( rc==SQLITE_OK ){
        rc = FUNC1(pConfig, "idx", 
            "segid, term, pgno, PRIMARY KEY(segid, term)", 
            1, pzErr
        );
      }
      if( rc==SQLITE_OK ){
        rc = FUNC3(p);
      }
    }
  }

  FUNC0( rc!=SQLITE_OK || p->rc==SQLITE_OK );
  if( rc ){
    FUNC2(p);
    *pp = 0;
  }
  return rc;
}