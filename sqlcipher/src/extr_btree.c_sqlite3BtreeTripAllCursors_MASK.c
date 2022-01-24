#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int curFlags; scalar_t__ eState; int skipNext; struct TYPE_12__* pNext; } ;
struct TYPE_11__ {TYPE_1__* pBt; } ;
struct TYPE_10__ {TYPE_3__* pCursor; } ;
typedef  TYPE_2__ Btree ;
typedef  TYPE_3__ BtCursor ;

/* Variables and functions */
 int BTCF_WriteFlag ; 
 scalar_t__ CURSOR_FAULT ; 
 scalar_t__ CURSOR_SKIPNEXT ; 
 scalar_t__ CURSOR_VALID ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

int FUNC6(Btree *pBtree, int errCode, int writeOnly){
  BtCursor *p;
  int rc = SQLITE_OK;

  FUNC0( (writeOnly==0 || writeOnly==1) && BTCF_WriteFlag==1 );
  if( pBtree ){
    FUNC4(pBtree);
    for(p=pBtree->pBt->pCursor; p; p=p->pNext){
      if( writeOnly && (p->curFlags & BTCF_WriteFlag)==0 ){
        if( p->eState==CURSOR_VALID || p->eState==CURSOR_SKIPNEXT ){
          rc = FUNC2(p);
          if( rc!=SQLITE_OK ){
            (void)FUNC6(pBtree, rc, 0);
            break;
          }
        }
      }else{
        FUNC3(p);
        p->eState = CURSOR_FAULT;
        p->skipNext = errCode;
      }
      FUNC1(p);
    }
    FUNC5(pBtree);
  }
  return rc;
}