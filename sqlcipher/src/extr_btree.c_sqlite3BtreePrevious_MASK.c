#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ nSize; } ;
struct TYPE_9__ {int curFlags; scalar_t__ eState; scalar_t__ ix; TYPE_1__* pPage; TYPE_2__ info; } ;
struct TYPE_7__ {scalar_t__ leaf; } ;
typedef  TYPE_3__ BtCursor ;

/* Variables and functions */
 int BTCF_AtLast ; 
 int BTCF_ValidNKey ; 
 int BTCF_ValidOvfl ; 
 scalar_t__ CURSOR_VALID ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 

int FUNC4(BtCursor *pCur, int flags){
  FUNC1( FUNC3(pCur) );
  FUNC1( flags==0 || flags==1 );
  FUNC0( flags );  /* Used in COMDB2 but not native SQLite */
  pCur->curFlags &= ~(BTCF_AtLast|BTCF_ValidOvfl|BTCF_ValidNKey);
  pCur->info.nSize = 0;
  if( pCur->eState!=CURSOR_VALID
   || pCur->ix==0
   || pCur->pPage->leaf==0
  ){
    return FUNC2(pCur);
  }
  pCur->ix--;
  return SQLITE_OK;
}