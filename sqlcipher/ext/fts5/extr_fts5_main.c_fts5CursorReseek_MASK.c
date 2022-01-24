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
typedef  scalar_t__ i64 ;
struct TYPE_10__ {scalar_t__ pVtab; } ;
struct TYPE_13__ {int bDesc; int /*<<< orphan*/  pExpr; TYPE_1__ base; } ;
struct TYPE_11__ {int /*<<< orphan*/  pIndex; } ;
struct TYPE_12__ {TYPE_2__ p; } ;
typedef  TYPE_3__ Fts5FullTable ;
typedef  TYPE_4__ Fts5Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTS5CSR_EOF ; 
 int /*<<< orphan*/  FTS5CSR_REQUIRE_RESEEK ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(Fts5Cursor *pCsr, int *pbSkip){
  int rc = SQLITE_OK;
  FUNC3( *pbSkip==0 );
  if( FUNC2(pCsr, FTS5CSR_REQUIRE_RESEEK) ){
    Fts5FullTable *pTab = (Fts5FullTable*)(pCsr->base.pVtab);
    int bDesc = pCsr->bDesc;
    i64 iRowid = FUNC7(pCsr->pExpr);

    rc = FUNC6(pCsr->pExpr, pTab->p.pIndex, iRowid, bDesc);
    if( rc==SQLITE_OK &&  iRowid!=FUNC7(pCsr->pExpr) ){
      *pbSkip = 1;
    }

    FUNC0(pCsr, FTS5CSR_REQUIRE_RESEEK);
    FUNC4(pCsr);
    if( FUNC5(pCsr->pExpr) ){
      FUNC1(pCsr, FTS5CSR_EOF);
      *pbSkip = 1;
    }
  }
  return rc;
}