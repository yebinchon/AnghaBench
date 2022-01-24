#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int errCode; scalar_t__ eState; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 int /*<<< orphan*/  EXCLUSIVE_LOCK ; 
 scalar_t__ PAGER_WRITER_CACHEMOD ; 
 scalar_t__ PAGER_WRITER_DBMOD ; 
 scalar_t__ PAGER_WRITER_LOCKED ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC4(Pager *pPager){
  int rc = pPager->errCode;
  FUNC0( FUNC1(pPager) );
  if( rc==SQLITE_OK ){
    FUNC0( pPager->eState==PAGER_WRITER_CACHEMOD 
         || pPager->eState==PAGER_WRITER_DBMOD 
         || pPager->eState==PAGER_WRITER_LOCKED 
    );
    FUNC0( FUNC1(pPager) );
    if( 0==FUNC2(pPager) ){
      rc = FUNC3(pPager, EXCLUSIVE_LOCK);
    }
  }
  return rc;
}