#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* pBt; } ;
struct TYPE_6__ {int btsFlags; } ;
typedef  TYPE_2__ Btree ;

/* Variables and functions */
 int BTS_FAST_SECURE ; 
 int BTS_OVERWRITE ; 
 int BTS_SECURE_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int FUNC3(Btree *p, int newFlag){
  int b;
  if( p==0 ) return 0;
  FUNC1(p);
  FUNC0( BTS_OVERWRITE==BTS_SECURE_DELETE*2 );
  FUNC0( BTS_FAST_SECURE==(BTS_OVERWRITE|BTS_SECURE_DELETE) );
  if( newFlag>=0 ){
    p->pBt->btsFlags &= ~BTS_FAST_SECURE;
    p->pBt->btsFlags |= BTS_SECURE_DELETE*newFlag;
  }
  b = (p->pBt->btsFlags & BTS_FAST_SECURE)/BTS_SECURE_DELETE;
  FUNC2(p);
  return b;
}