#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ eState; } ;
typedef  TYPE_1__ BtCursor ;

/* Variables and functions */
 scalar_t__ CURSOR_VALID ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 

int FUNC2(BtCursor *pCur, int *pDifferentRow){
  int rc;

  FUNC0( pCur!=0 );
  FUNC0( pCur->eState!=CURSOR_VALID );
  rc = FUNC1(pCur);
  if( rc ){
    *pDifferentRow = 1;
    return rc;
  }
  if( pCur->eState!=CURSOR_VALID ){
    *pDifferentRow = 1;
  }else{
    *pDifferentRow = 0;
  }
  return SQLITE_OK;
}