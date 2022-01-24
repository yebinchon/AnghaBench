#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  TableSpec ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char**) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char const* const*,char**) ; 

__attribute__((used)) static int FUNC3(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVTab,
  char **pzErr
){
  TableSpec spec;
  int rc = FUNC2(&spec, argc, argv, pzErr);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC1(db, &spec, ppVTab, pzErr);
  FUNC0(&spec);
  return rc;
}