#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int nSlot; int /*<<< orphan*/  pFree; int /*<<< orphan*/  pInit; } ;
struct TYPE_5__ {TYPE_1__ lookaside; } ;
typedef  TYPE_2__ sqlite3 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(sqlite3 *db, int *pHighwater){
  u32 nInit = FUNC0(db->lookaside.pInit);
  u32 nFree = FUNC0(db->lookaside.pFree);
  if( pHighwater ) *pHighwater = db->lookaside.nSlot - nInit;
  return db->lookaside.nSlot - (nInit+nFree);
}