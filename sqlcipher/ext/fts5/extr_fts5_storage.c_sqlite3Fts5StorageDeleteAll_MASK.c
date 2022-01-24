#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; int /*<<< orphan*/  db; scalar_t__ bColumnsize; } ;
struct TYPE_5__ {int /*<<< orphan*/  pIndex; TYPE_2__* pConfig; } ;
typedef  TYPE_1__ Fts5Storage ;
typedef  TYPE_2__ Fts5Config ;

/* Variables and functions */
 int /*<<< orphan*/  FTS5_CURRENT_VERSION ; 
 int SQLITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(Fts5Storage *p){
  Fts5Config *pConfig = p->pConfig;
  int rc;

  /* Delete the contents of the %_data and %_docsize tables. */
  rc = FUNC0(pConfig->db, 0,
      "DELETE FROM %Q.'%q_data';" 
      "DELETE FROM %Q.'%q_idx';",
      pConfig->zDb, pConfig->zName,
      pConfig->zDb, pConfig->zName
  );
  if( rc==SQLITE_OK && pConfig->bColumnsize ){
    rc = FUNC0(pConfig->db, 0,
        "DELETE FROM %Q.'%q_docsize';",
        pConfig->zDb, pConfig->zName
    );
  }

  /* Reinitialize the %_data table. This call creates the initial structure
  ** and averages records.  */
  if( rc==SQLITE_OK ){
    rc = FUNC1(p->pIndex);
  }
  if( rc==SQLITE_OK ){
    rc = FUNC2(p, "version", 0, FTS5_CURRENT_VERSION);
  }
  return rc;
}