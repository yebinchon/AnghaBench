#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_2__ {char* zTbl; char* zDb; int /*<<< orphan*/  base; int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ fs_vtab ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  fs_vtab *pVtab;
  int nByte;
  const char *zTbl;
  const char *zDb = argv[1];

  if( argc!=4 ){
    *pzErr = FUNC3("wrong number of arguments");
    return SQLITE_ERROR;
  }
  zTbl = argv[3];

  nByte = sizeof(fs_vtab) + (int)FUNC4(zTbl) + 1 + (int)FUNC4(zDb) + 1;
  pVtab = (fs_vtab *)FUNC1( nByte );
  if( !pVtab ) return SQLITE_NOMEM;

  pVtab->zTbl = (char *)&pVtab[1];
  pVtab->zDb = &pVtab->zTbl[FUNC4(zTbl)+1];
  pVtab->db = db;
  FUNC0(pVtab->zTbl, zTbl, FUNC4(zTbl));
  FUNC0(pVtab->zDb, zDb, FUNC4(zDb));
  *ppVtab = &pVtab->base;
  FUNC2(db, "CREATE TABLE x(path TEXT, data TEXT)");

  return SQLITE_OK;
}