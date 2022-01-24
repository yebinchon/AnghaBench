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
struct TYPE_3__ {unsigned int hints; } ;
typedef  TYPE_1__ BtCursor ;

/* Variables and functions */
 unsigned int BTREE_BULKLOAD ; 
 unsigned int BTREE_SEEK_EQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1(BtCursor *pCur, unsigned x){
  FUNC0( x==BTREE_SEEK_EQ || x==BTREE_BULKLOAD || x==0 );
  pCur->hints = x;
}