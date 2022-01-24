#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ pVtab; } ;
typedef  TYPE_1__ sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_13__ {int nAux; int /*<<< orphan*/  zReadAuxSql; int /*<<< orphan*/  db; } ;
struct TYPE_12__ {int bAuxValid; scalar_t__ pReadAux; } ;
struct TYPE_11__ {int /*<<< orphan*/  iCell; } ;
typedef  TYPE_2__ RtreeSearchPoint ;
typedef  int /*<<< orphan*/  RtreeNode ;
typedef  TYPE_3__ RtreeCursor ;
typedef  TYPE_4__ Rtree ;

/* Variables and functions */
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,int*) ; 
 TYPE_2__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  Rtree *pRtree = (Rtree *)cur->pVtab;
  RtreeCursor *pCsr = (RtreeCursor *)cur;
  RtreeSearchPoint *p = FUNC2(pCsr);
  int rc = SQLITE_OK;
  RtreeNode *pNode = FUNC1(pCsr, &rc);

  if( rc ) return rc;
  if( p==0 ) return SQLITE_OK;
  if( i==0 && FUNC9(ctx) ) return SQLITE_OK;
  if( i<=pRtree->nAux ){
    if( !pCsr->bAuxValid ){
      if( pCsr->pReadAux==0 ){
        rc = FUNC5(pRtree->db, pRtree->zReadAuxSql, -1, 0,
                                &pCsr->pReadAux, 0);
        if( rc ) return rc;
      }
      FUNC3(pCsr->pReadAux, 1, 
          FUNC0(pRtree, pNode, p->iCell));
      rc = FUNC8(pCsr->pReadAux);
      if( rc==SQLITE_ROW ){
        pCsr->bAuxValid = 1;
      }else{
        FUNC6(pCsr->pReadAux);
        if( rc==SQLITE_DONE ) rc = SQLITE_OK;
        return rc;
      }
    }
    FUNC7(ctx, FUNC4(pCsr->pReadAux, i+2));
  }
  return SQLITE_OK;
}