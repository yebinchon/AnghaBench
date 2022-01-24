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
struct TYPE_2__ {int nRowPerTrans; int /*<<< orphan*/  db; int /*<<< orphan*/  pInsert; } ;
typedef  TYPE_1__ VisitContext ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

void FUNC6(void *pCtx, const char *zPath){
  int rc;
  VisitContext *p = (VisitContext*)pCtx;
  /* printf("%s\n", zPath); */
  FUNC0(p->pInsert, 1, zPath, -1, SQLITE_STATIC);
  FUNC4(p->pInsert);
  rc = FUNC3(p->pInsert);
  if( rc!=SQLITE_OK ){
    FUNC5("insert", p->db);
  }else if( p->nRowPerTrans>0 
         && (FUNC2(p->db) % p->nRowPerTrans)==0 
  ){
    FUNC1(p->db, "COMMIT ; BEGIN", 0, 0, 0);
  }
}