#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int (* xSelectCallback ) (TYPE_1__*,TYPE_2__*) ;int /*<<< orphan*/  (* xSelectCallback2 ) (TYPE_1__*,TYPE_2__*) ;} ;
typedef  TYPE_1__ Walker ;
struct TYPE_14__ {struct TYPE_14__* pPrior; } ;
typedef  TYPE_2__ Select ;

/* Variables and functions */
 int WRC_Abort ; 
 int WRC_Continue ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 

int FUNC4(Walker *pWalker, Select *p){
  int rc;
  if( p==0 ) return WRC_Continue;
  if( pWalker->xSelectCallback==0 ) return WRC_Continue;
  do{
    rc = pWalker->xSelectCallback(pWalker, p);
    if( rc ) return rc & WRC_Abort;
    if( FUNC0(pWalker, p)
     || FUNC1(pWalker, p)
    ){
      return WRC_Abort;
    }
    if( pWalker->xSelectCallback2 ){
      pWalker->xSelectCallback2(pWalker, p);
    }
    p = p->pPrior;
  }while( p!=0 );
  return WRC_Continue;
}