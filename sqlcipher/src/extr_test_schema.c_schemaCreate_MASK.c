#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ schema_vtab ;

/* Variables and functions */
 int /*<<< orphan*/  SCHEMA ; 
 int SQLITE_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  int rc = SQLITE_NOMEM;
  schema_vtab *pVtab = FUNC2(sizeof(schema_vtab));
  if( pVtab ){
    FUNC0(pVtab, 0, sizeof(schema_vtab));
    pVtab->db = db;
#ifndef SQLITE_OMIT_VIRTUALTABLE
    rc = FUNC1(db, SCHEMA);
#endif
  }
  *ppVtab = (sqlite3_vtab *)pVtab;
  return rc;
}