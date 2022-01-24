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
typedef  scalar_t__ u16 ;
struct RowSetEntry {int dummy; } ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_5__ {scalar_t__ iBatch; int /*<<< orphan*/  rsFlags; scalar_t__ nFresh; struct RowSetEntry* pFresh; scalar_t__ pForest; scalar_t__ pLast; scalar_t__ pEntry; int /*<<< orphan*/ * db; scalar_t__ pChunk; } ;
typedef  TYPE_1__ RowSet ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ROWSET_SORTED ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

RowSet *FUNC3(sqlite3 *db){
  RowSet *p = FUNC1(db, sizeof(*p));
  if( p ){
    int N = FUNC2(db, p);
    p->pChunk = 0;
    p->db = db;
    p->pEntry = 0;
    p->pLast = 0;
    p->pForest = 0;
    p->pFresh = (struct RowSetEntry*)(FUNC0(sizeof(*p)) + (char*)p);
    p->nFresh = (u16)((N - FUNC0(sizeof(*p)))/sizeof(struct RowSetEntry));
    p->rsFlags = ROWSET_SORTED;
    p->iBatch = 0;
  }
  return p;
}