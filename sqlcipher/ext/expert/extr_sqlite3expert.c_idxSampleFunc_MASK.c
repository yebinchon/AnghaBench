#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct IdxSampleCtx {double nRow; int nRet; int target; int iTarget; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(
  sqlite3_context *pCtx,
  int argc,
  sqlite3_value **argv
){
  struct IdxSampleCtx *p = (struct IdxSampleCtx*)FUNC3(pCtx);
  int bRet;

  (void)argv;
  FUNC0( argc==0 );
  if( p->nRow==0.0 ){
    bRet = 1;
  }else{
    bRet = (p->nRet / p->nRow) <= p->target;
    if( bRet==0 ){
      unsigned short rnd;
      FUNC1(2, (void*)&rnd);
      bRet = ((int)rnd % 100) <= p->iTarget;
    }
  }

  FUNC2(pCtx, bRet);
  p->nRow += 1.0;
  p->nRet += (double)bRet;
}