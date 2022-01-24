#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_9__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; int /*<<< orphan*/  azContentColumn; int /*<<< orphan*/  nColumn; } ;
typedef  TYPE_1__ TableSpec ;
struct TYPE_10__ {char* s; } ;
typedef  TYPE_2__ StringBuffer ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_1__*,int,char const* const*,char**) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(sqlite3 *db, void *pAux,
                          int argc, const char * const *argv,
                          sqlite3_vtab **ppVTab, char **pzErr){
  int rc;
  TableSpec spec;
  StringBuffer schema;
  FUNC0(("FTS1 Create\n"));

  rc = FUNC7(&spec, argc, argv, pzErr);
  if( rc!=SQLITE_OK ) return rc;

  FUNC6(&schema);
  FUNC1(&schema, "CREATE TABLE %_content(");
  FUNC2(&schema, spec.nColumn, spec.azContentColumn);
  FUNC1(&schema, ")");
  rc = FUNC8(db, spec.zDb, spec.zName, schema.s);
  FUNC5(schema.s);
  if( rc!=SQLITE_OK ) goto out;

  rc = FUNC8(db, spec.zDb, spec.zName,
    "create table %_term(term text, segment integer, doclist blob, "
                        "primary key(term, segment));");
  if( rc!=SQLITE_OK ) goto out;

  rc = FUNC4(db, &spec, ppVTab, pzErr);

out:
  FUNC3(&spec);
  return rc;
}