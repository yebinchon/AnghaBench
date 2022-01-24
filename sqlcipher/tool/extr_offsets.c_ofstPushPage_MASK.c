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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {size_t nStack; int* aPgno; int szPg; int pgno; int /*<<< orphan*/  f; int /*<<< orphan*/ * aPage; int /*<<< orphan*/ ** aStack; scalar_t__ zErr; } ;
typedef  TYPE_1__ GState ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC8(GState *p, int pgno){
  u8 *pPage;
  size_t got;
  if( p->zErr ) return;
  if( p->nStack >= FUNC0(p->aStack) ){
    FUNC5(p, "page stack overflow");
    return;
  }
  p->aPgno[p->nStack] = pgno;
  p->aStack[p->nStack] = pPage = FUNC7( p->szPg );
  if( pPage==0 ){
    FUNC2(stderr, "out of memory\n");
    FUNC1(1);
  }
  p->nStack++;
  p->aPage = pPage;
  p->pgno = pgno;
  FUNC4(p->f, (pgno-1)*p->szPg, SEEK_SET);
  got = FUNC3(pPage, 1, p->szPg, p->f);
  if( got!=p->szPg ){
    FUNC5(p, "unable to read page %d", pgno);
    FUNC6(p);
  }
}