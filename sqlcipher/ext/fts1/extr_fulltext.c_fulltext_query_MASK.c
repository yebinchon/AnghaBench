#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  fulltext_vtab ;
struct TYPE_6__ {int nTerms; TYPE_1__* pTerm; } ;
struct TYPE_5__ {int /*<<< orphan*/  zTerm; scalar_t__ is_phrase; } ;
typedef  TYPE_2__ Query ;
typedef  int /*<<< orphan*/  DocList ;

/* Variables and functions */
 int /*<<< orphan*/  DL_DOCIDS ; 
 int /*<<< orphan*/  DL_POSITIONS ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(fulltext_vtab *v, const char *zQuery,
                          DocList **pResult){
  Query q;
  int phrase_start = -1;
  int i;
  sqlite3_stmt *pSelect = NULL;
  DocList *d = NULL;

  int rc = FUNC2(v, zQuery, &q);
  if( rc!=SQLITE_OK ) return rc;

  /* Merge terms. */
  for(i = 0 ; i < q.nTerms ; ++i){
    /* In each merge step, we need to generate positions whenever we're
     * processing a phrase which hasn't ended yet. */
    int need_positions = i<q.nTerms-1 && !q.pTerm[i+1].is_phrase;
    DocList *next = FUNC1(need_positions ? DL_POSITIONS : DL_DOCIDS);
    if( q.pTerm[i].is_phrase ){
      phrase_start = i;
    }
    rc = FUNC4(v, &pSelect, q.pTerm[i].zTerm, d, i - phrase_start, next);
    if( rc!=SQLITE_OK ) break;
    if( d!=NULL ){
      FUNC0(d);
    }
    d = next;
  }

  FUNC5(pSelect);
  FUNC3(&q);
  *pResult = d;
  return rc;
}