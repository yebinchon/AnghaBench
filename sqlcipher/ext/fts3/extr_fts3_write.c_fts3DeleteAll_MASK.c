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
struct TYPE_5__ {scalar_t__ zContentTbl; scalar_t__ bHasStat; scalar_t__ bHasDocsize; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQL_DELETE_ALL_CONTENT ; 
 int /*<<< orphan*/  SQL_DELETE_ALL_DOCSIZE ; 
 int /*<<< orphan*/  SQL_DELETE_ALL_SEGDIR ; 
 int /*<<< orphan*/  SQL_DELETE_ALL_SEGMENTS ; 
 int /*<<< orphan*/  SQL_DELETE_ALL_STAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(Fts3Table *p, int bContent){
  int rc = SQLITE_OK;             /* Return code */

  /* Discard the contents of the pending-terms hash table. */
  FUNC2(p);

  /* Delete everything from the shadow tables. Except, leave %_content as
  ** is if bContent is false.  */
  FUNC0( p->zContentTbl==0 || bContent==0 );
  if( bContent ) FUNC1(&rc, p, SQL_DELETE_ALL_CONTENT, 0);
  FUNC1(&rc, p, SQL_DELETE_ALL_SEGMENTS, 0);
  FUNC1(&rc, p, SQL_DELETE_ALL_SEGDIR, 0);
  if( p->bHasDocsize ){
    FUNC1(&rc, p, SQL_DELETE_ALL_DOCSIZE, 0);
  }
  if( p->bHasStat ){
    FUNC1(&rc, p, SQL_DELETE_ALL_STAT, 0);
  }
  return rc;
}