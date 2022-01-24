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
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_5__ {int /*<<< orphan*/  pTokenizer; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ fulltext_vtab ;
typedef  int /*<<< orphan*/  HashElem ;
typedef  int /*<<< orphan*/  Hash ;
typedef  int /*<<< orphan*/  DocList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int SQLITE_OK ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(fulltext_vtab *v,
                        sqlite3_value *pRequestRowid, const char *zText,
                        sqlite_int64 *piRowid){
  Hash terms;  /* maps term string -> PosList */
  HashElem *e;

  int rc = FUNC7(v, pRequestRowid, zText, -1);
  if( rc!=SQLITE_OK ) return rc;
  *piRowid = FUNC10(v->db);

  if( !zText ) return SQLITE_OK;   /* nothing to index */

  rc = FUNC6(&terms, v->pTokenizer, zText, *piRowid);
  if( rc!=SQLITE_OK ) return rc;

  for(e=FUNC2(&terms); e; e=FUNC5(e)){
    DocList *p = FUNC1(e);
    rc = FUNC9(v, FUNC3(e), FUNC4(e), *piRowid, p);
    if( rc!=SQLITE_OK ) break;
  }

  for(e=FUNC2(&terms); e; e=FUNC5(e)){
    DocList *p = FUNC1(e);
    FUNC8(p);
  }
  FUNC0(&terms);
  return rc;
}