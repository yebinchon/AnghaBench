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
typedef  int u8 ;
struct TYPE_7__ {int btsFlags; int autoVacuum; int incrVacuum; } ;
struct TYPE_6__ {TYPE_2__* pBt; } ;
typedef  TYPE_1__ Btree ;
typedef  TYPE_2__ BtShared ;

/* Variables and functions */
 int BTS_PAGESIZE_FIXED ; 
 int SQLITE_OK ; 
 int SQLITE_READONLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2(Btree *p, int autoVacuum){
#ifdef SQLITE_OMIT_AUTOVACUUM
  return SQLITE_READONLY;
#else
  BtShared *pBt = p->pBt;
  int rc = SQLITE_OK;
  u8 av = (u8)autoVacuum;

  FUNC0(p);
  if( (pBt->btsFlags & BTS_PAGESIZE_FIXED)!=0 && (av ?1:0)!=pBt->autoVacuum ){
    rc = SQLITE_READONLY;
  }else{
    pBt->autoVacuum = av ?1:0;
    pBt->incrVacuum = av==2 ?1:0;
  }
  FUNC1(p);
  return rc;
#endif
}