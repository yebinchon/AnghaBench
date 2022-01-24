#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ pVtab; } ;
struct TYPE_7__ {scalar_t__ pStmt; int bSeekStmt; TYPE_1__ base; } ;
struct TYPE_6__ {scalar_t__ pSeekStmt; int /*<<< orphan*/  db; int /*<<< orphan*/  zReadExprlist; } ;
typedef  TYPE_2__ Fts3Table ;
typedef  TYPE_3__ Fts3Cursor ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_PREPARE_PERSISTENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(Fts3Cursor *pCsr){
  int rc = SQLITE_OK;
  if( pCsr->pStmt==0 ){
    Fts3Table *p = (Fts3Table *)pCsr->base.pVtab;
    char *zSql;
    if( p->pSeekStmt ){
      pCsr->pStmt = p->pSeekStmt;
      p->pSeekStmt = 0;
    }else{
      zSql = FUNC1("SELECT %s WHERE rowid = ?", p->zReadExprlist);
      if( !zSql ) return SQLITE_NOMEM;
      rc = FUNC2(p->db, zSql,-1,SQLITE_PREPARE_PERSISTENT,&pCsr->pStmt,0);
      FUNC0(zSql);
    }
    if( rc==SQLITE_OK ) pCsr->bSeekStmt = 1;
  }
  return rc;
}