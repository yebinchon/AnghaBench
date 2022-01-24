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
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ FsdirVtab ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  FsdirVtab *pTab;

  if( argc!=3 ){
    *pzErr = FUNC3("wrong number of arguments");
    return SQLITE_ERROR;
  }

  pTab = (FsdirVtab *)FUNC2(sizeof(FsdirVtab));
  if( !pTab ) return SQLITE_NOMEM;
  FUNC0(pTab, 0, sizeof(FsdirVtab));

  *ppVtab = &pTab->base;
  FUNC1(db, "CREATE TABLE xyz(dir, name);");

  return SQLITE_OK;
}