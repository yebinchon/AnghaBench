#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ eState; scalar_t__ ix; TYPE_1__* pPage; } ;
struct TYPE_7__ {scalar_t__ nCell; int /*<<< orphan*/  leaf; } ;
typedef  int /*<<< orphan*/  Pgno ;
typedef  TYPE_1__ MemPage ;
typedef  TYPE_2__ BtCursor ;

/* Variables and functions */
 scalar_t__ CURSOR_VALID ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(BtCursor *pCur){
  Pgno pgno;
  int rc = SQLITE_OK;
  MemPage *pPage;

  FUNC0( FUNC1(pCur) );
  FUNC0( pCur->eState==CURSOR_VALID );
  while( rc==SQLITE_OK && !(pPage = pCur->pPage)->leaf ){
    FUNC0( pCur->ix<pPage->nCell );
    pgno = FUNC3(FUNC2(pPage, pCur->ix));
    rc = FUNC4(pCur, pgno);
  }
  return rc;
}