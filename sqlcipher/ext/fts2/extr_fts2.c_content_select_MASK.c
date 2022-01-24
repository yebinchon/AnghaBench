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
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_4__ {int nColumn; } ;
typedef  TYPE_1__ fulltext_vtab ;

/* Variables and functions */
 int /*<<< orphan*/  CONTENT_SELECT_STMT ; 
 int SQLITE_DONE ; 
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int,char const**) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(fulltext_vtab *v, sqlite_int64 iRow,
                          const char ***pValues){
  sqlite3_stmt *s;
  const char **values;
  int i;
  int rc;

  *pValues = NULL;

  rc = FUNC1(v, CONTENT_SELECT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC2(s, 1, iRow);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC6(s);
  if( rc!=SQLITE_ROW ) return rc;

  values = (const char **) FUNC5(v->nColumn * sizeof(const char *));
  for(i=0; i<v->nColumn; ++i){
    if( FUNC4(s, i)==SQLITE_NULL ){
      values[i] = NULL;
    }else{
      values[i] = FUNC7((char*)FUNC3(s, i));
    }
  }

  /* We expect only one row.  We must execute another sqlite3_step()
   * to complete the iteration; otherwise the table will remain locked. */
  rc = FUNC6(s);
  if( rc==SQLITE_DONE ){
    *pValues = values;
    return SQLITE_OK;
  }

  FUNC0(v->nColumn, values);
  return rc;
}