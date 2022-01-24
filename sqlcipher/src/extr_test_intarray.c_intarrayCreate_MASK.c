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
typedef  int /*<<< orphan*/  sqlite3_intarray ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {int /*<<< orphan*/ * pContent; } ;
typedef  TYPE_1__ intarray_vtab ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(
  sqlite3 *db,              /* Database where module is created */
  void *pAux,               /* clientdata for the module */
  int argc,                 /* Number of arguments */
  const char *const*argv,   /* Value for all arguments */
  sqlite3_vtab **ppVtab,    /* Write the new virtual table object here */
  char **pzErr              /* Put error message text here */
){
  int rc = SQLITE_NOMEM;
  intarray_vtab *pVtab = FUNC2(sizeof(intarray_vtab));

  if( pVtab ){
    FUNC0(pVtab, 0, sizeof(intarray_vtab));
    pVtab->pContent = (sqlite3_intarray*)pAux;
    rc = FUNC1(db, "CREATE TABLE x(value INTEGER PRIMARY KEY)");
  }
  *ppVtab = (sqlite3_vtab *)pVtab;
  return rc;
}