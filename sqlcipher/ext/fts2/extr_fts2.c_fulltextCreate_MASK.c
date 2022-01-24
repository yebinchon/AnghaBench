#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  fts2Hash ;
struct TYPE_5__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; int /*<<< orphan*/  azContentColumn; int /*<<< orphan*/  nColumn; } ;
typedef  TYPE_1__ TableSpec ;
typedef  int /*<<< orphan*/  StringBuffer ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int,char const* const*,char**) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(sqlite3 *db, void *pAux,
                          int argc, const char * const *argv,
                          sqlite3_vtab **ppVTab, char **pzErr){
  int rc;
  TableSpec spec;
  StringBuffer schema;
  FUNC0(("FTS2 Create\n"));

  rc = FUNC6(&spec, argc, argv, pzErr);
  if( rc!=SQLITE_OK ) return rc;

  FUNC5(&schema);
  FUNC1(&schema, "CREATE TABLE %_content(");
  FUNC2(&schema, spec.nColumn, spec.azContentColumn);
  FUNC1(&schema, ")");
  rc = FUNC7(db, spec.zDb, spec.zName, FUNC8(&schema));
  FUNC9(&schema);
  if( rc!=SQLITE_OK ) goto out;

  rc = FUNC7(db, spec.zDb, spec.zName,
                "create table %_segments(block blob);");
  if( rc!=SQLITE_OK ) goto out;

  rc = FUNC7(db, spec.zDb, spec.zName,
                "create table %_segdir("
                "  level integer,"
                "  idx integer,"
                "  start_block integer,"
                "  leaves_end_block integer,"
                "  end_block integer,"
                "  root blob,"
                "  primary key(level, idx)"
                ");");
  if( rc!=SQLITE_OK ) goto out;

  rc = FUNC4(db, (fts2Hash *)pAux, &spec, ppVTab, pzErr);

out:
  FUNC3(&spec);
  return rc;
}