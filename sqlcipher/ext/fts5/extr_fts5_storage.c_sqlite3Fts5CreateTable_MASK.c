#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ Fts5Config ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,char const*,char*) ; 

int FUNC3(
  Fts5Config *pConfig,            /* FTS5 configuration */
  const char *zPost,              /* Shadow table to create (e.g. "content") */
  const char *zDefn,              /* Columns etc. for shadow table */
  int bWithout,                   /* True for without rowid */
  char **pzErr                    /* OUT: Error message */
){
  int rc;
  char *zErr = 0;

  rc = FUNC0(pConfig->db, &zErr, "CREATE TABLE %Q.'%q_%q'(%s)%s",
      pConfig->zDb, pConfig->zName, zPost, zDefn, 
#ifndef SQLITE_FTS5_NO_WITHOUT_ROWID
      bWithout?" WITHOUT ROWID":
#endif
      ""
  );
  if( zErr ){
    *pzErr = FUNC2(
        "fts5: error creating shadow table %q_%s: %s", 
        pConfig->zName, zPost, zErr
    );
    FUNC1(zErr);
  }

  return rc;
}