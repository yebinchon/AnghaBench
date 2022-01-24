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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_5__ {int nColumn; } ;
typedef  TYPE_1__ fulltext_vtab ;
typedef  int /*<<< orphan*/  DocList ;

/* Variables and functions */
 int /*<<< orphan*/  DL_DEFAULT ; 
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  TERM_SELECT_ALL_STMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(
  fulltext_vtab *v,     /* The fulltext index we are querying against */
  int iColumn,          /* If <nColumn, only look at the iColumn-th column */
  const char *pTerm,    /* The term whose posting lists we want */
  int nTerm,            /* Number of bytes in pTerm */
  DocList *out          /* Write the resulting doclist here */
){
  DocList doclist;
  sqlite3_stmt *s;
  int rc = FUNC5(v, TERM_SELECT_ALL_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC7(s, 1, pTerm, nTerm, SQLITE_STATIC);
  if( rc!=SQLITE_OK ) return rc;

  FUNC3(&doclist, DL_DEFAULT, 0, 0);

  /* TODO(shess) Handle schema and busy errors. */
  while( (rc=FUNC6(v, TERM_SELECT_ALL_STMT, &s))==SQLITE_ROW ){
    DocList old;

    /* TODO(shess) If we processed doclists from oldest to newest, we
    ** could skip the malloc() involved with the following call.  For
    ** now, I'd rather keep this logic similar to index_insert_term().
    ** We could additionally drop elements when we see deletes, but
    ** that would require a distinct version of docListAccumulate().
    */
    FUNC3(&old, DL_DEFAULT,
                FUNC8(s, 0), FUNC9(s, 0));

    if( iColumn<v->nColumn ){   /* querying a single column */
      FUNC4(&old, iColumn);
    }

    /* doclist contains the newer data, so write it over old.  Then
    ** steal accumulated result for doclist.
    */
    FUNC0(&old, &doclist);
    FUNC1(&doclist);
    doclist = old;
  }
  if( rc!=SQLITE_DONE ){
    FUNC1(&doclist);
    return rc;
  }

  FUNC2(&doclist);
  *out = doclist;
  return SQLITE_OK;
}