#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_3__ {scalar_t__ iRwclient; int mLock; } ;
typedef  TYPE_1__ lsm_db ;

/* Variables and functions */
 scalar_t__ LSM_LOCK_NRWCLIENT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(lsm_db *db){
#ifndef NDEBUG
  u64 msk;                        /* Mask of mLock bits for RWCLIENT locks */
  u64 rwclient = 0;               /* Bit corresponding to db->iRwclient */

  if( db->iRwclient>=0 ){
    rwclient = ((u64)1 << (FUNC0(db->iRwclient)-1));
  }
  msk  = ((u64)1 << (FUNC0(LSM_LOCK_NRWCLIENT)-1)) - 1;
  msk -= (((u64)1 << (FUNC0(0)-1)) - 1);

  FUNC1( (db->mLock & msk)==rwclient );
#endif
}