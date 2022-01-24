#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zStateDb; int /*<<< orphan*/  zErrmsg; int /*<<< orphan*/  dbRbu; int /*<<< orphan*/  rc; } ;
typedef  TYPE_1__ sqlite3rbu ;
struct TYPE_7__ {scalar_t__ eType; scalar_t__ pTmpInsert; int /*<<< orphan*/  zDataTbl; scalar_t__ nTblCol; } ;
typedef  TYPE_2__ RbuObjIter ;

/* Variables and functions */
 scalar_t__ RBU_PK_EXTERNAL ; 
 scalar_t__ RBU_PK_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,char*) ; 

__attribute__((used)) static void FUNC4(
  sqlite3rbu *p, 
  RbuObjIter *pIter,
  const char *zCollist,
  const char *zRbuRowid
){
  int bRbuRowid = (pIter->eType==RBU_PK_EXTERNAL || pIter->eType==RBU_PK_NONE);
  char *zBind = FUNC2(p, pIter->nTblCol + 1 + bRbuRowid);
  if( zBind ){
    FUNC0( pIter->pTmpInsert==0 );
    p->rc = FUNC1(
        p->dbRbu, &pIter->pTmpInsert, &p->zErrmsg, FUNC3(
          "INSERT INTO %s.'rbu_tmp_%q'(rbu_control,%s%s) VALUES(%z)", 
          p->zStateDb, pIter->zDataTbl, zCollist, zRbuRowid, zBind
    ));
  }
}