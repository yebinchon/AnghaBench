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
typedef  int i64 ;
struct TYPE_4__ {scalar_t__ pCache; int szPage; int szExtra; int szSpill; } ;
typedef  TYPE_1__ PCache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 

int FUNC2(PCache *p, int mxPage){
  int res;
  FUNC0( p->pCache!=0 );
  if( mxPage ){
    if( mxPage<0 ){
      mxPage = (int)((-1024*(i64)mxPage)/(p->szPage+p->szExtra));
    }
    p->szSpill = mxPage;
  }
  res = FUNC1(p);
  if( res<p->szSpill ) res = p->szSpill; 
  return res;
}