#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_pcache_page ;
struct TYPE_3__ {scalar_t__ pPCache; scalar_t__ hasHeldSharedLock; } ;
typedef  scalar_t__ Pgno ;
typedef  TYPE_1__ Pager ;
typedef  int /*<<< orphan*/  DbPage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 

DbPage *FUNC3(Pager *pPager, Pgno pgno){
  sqlite3_pcache_page *pPage;
  FUNC0( pPager!=0 );
  FUNC0( pgno!=0 );
  FUNC0( pPager->pPCache!=0 );
  pPage = FUNC1(pPager->pPCache, pgno, 0);
  FUNC0( pPage==0 || pPager->hasHeldSharedLock );
  if( pPage==0 ) return 0;
  return FUNC2(pPager->pPCache, pgno, pPage);
}