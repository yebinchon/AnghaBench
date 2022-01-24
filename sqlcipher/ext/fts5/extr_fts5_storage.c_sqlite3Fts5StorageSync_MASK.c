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
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_6__ {TYPE_1__* pConfig; int /*<<< orphan*/  pIndex; scalar_t__ bTotalsValid; } ;
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ Fts5Storage ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(Fts5Storage *p){
  int rc = SQLITE_OK;
  i64 iLastRowid = FUNC2(p->pConfig->db);
  if( p->bTotalsValid ){
    rc = FUNC0(p);
    p->bTotalsValid = 0;
  }
  if( rc==SQLITE_OK ){
    rc = FUNC1(p->pIndex);
  }
  FUNC3(p->pConfig->db, iLastRowid);
  return rc;
}