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
struct TYPE_5__ {scalar_t__ eState; int nSavepoint; scalar_t__ useJournal; } ;
typedef  TYPE_1__ Pager ;

/* Variables and functions */
 scalar_t__ PAGER_WRITER_LOCKED ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int) ; 

int FUNC3(Pager *pPager, int nSavepoint){
  FUNC0( pPager->eState>=PAGER_WRITER_LOCKED );
  FUNC0( FUNC1(pPager) );

  if( nSavepoint>pPager->nSavepoint && pPager->useJournal ){
    return FUNC2(pPager, nSavepoint);
  }else{
    return SQLITE_OK;
  }
}