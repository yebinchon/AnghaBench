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
struct TYPE_6__ {scalar_t__ eState; scalar_t__ pKey; int curFlags; scalar_t__ skipNext; } ;
typedef  TYPE_1__ BtCursor ;

/* Variables and functions */
 int BTCF_AtLast ; 
 int BTCF_ValidNKey ; 
 int BTCF_ValidOvfl ; 
 scalar_t__ CURSOR_REQUIRESEEK ; 
 scalar_t__ CURSOR_SKIPNEXT ; 
 scalar_t__ CURSOR_VALID ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(BtCursor *pCur){
  int rc;

  FUNC0( CURSOR_VALID==pCur->eState || CURSOR_SKIPNEXT==pCur->eState );
  FUNC0( 0==pCur->pKey );
  FUNC0( FUNC2(pCur) );

  if( pCur->eState==CURSOR_SKIPNEXT ){
    pCur->eState = CURSOR_VALID;
  }else{
    pCur->skipNext = 0;
  }

  rc = FUNC3(pCur);
  if( rc==SQLITE_OK ){
    FUNC1(pCur);
    pCur->eState = CURSOR_REQUIRESEEK;
  }

  pCur->curFlags &= ~(BTCF_ValidNKey|BTCF_ValidOvfl|BTCF_AtLast);
  return rc;
}