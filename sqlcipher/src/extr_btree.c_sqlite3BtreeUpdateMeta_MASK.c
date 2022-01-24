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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_9__ {scalar_t__ incrVacuum; scalar_t__ autoVacuum; TYPE_1__* pPage1; } ;
struct TYPE_8__ {scalar_t__ inTrans; TYPE_3__* pBt; } ;
struct TYPE_7__ {unsigned char* aData; int /*<<< orphan*/  pDbPage; } ;
typedef  TYPE_2__ Btree ;
typedef  TYPE_3__ BtShared ;

/* Variables and functions */
 int BTREE_INCR_VACUUM ; 
 int SQLITE_OK ; 
 scalar_t__ TRANS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(Btree *p, int idx, u32 iMeta){
  BtShared *pBt = p->pBt;
  unsigned char *pP1;
  int rc;
  FUNC0( idx>=1 && idx<=15 );
  FUNC2(p);
  FUNC0( p->inTrans==TRANS_WRITE );
  FUNC0( pBt->pPage1!=0 );
  pP1 = pBt->pPage1->aData;
  rc = FUNC4(pBt->pPage1->pDbPage);
  if( rc==SQLITE_OK ){
    FUNC1(&pP1[36 + idx*4], iMeta);
#ifndef SQLITE_OMIT_AUTOVACUUM
    if( idx==BTREE_INCR_VACUUM ){
      FUNC0( pBt->autoVacuum || iMeta==0 );
      FUNC0( iMeta==0 || iMeta==1 );
      pBt->incrVacuum = (u8)iMeta;
    }
#endif
  }
  FUNC3(p);
  return rc;
}