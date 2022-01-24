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
struct KeyInfo {int dummy; } ;
typedef  int /*<<< orphan*/  Btree ;
typedef  int /*<<< orphan*/  BtCursor ;

/* Variables and functions */
 int SQLITE_CORRUPT_BKPT ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int,struct KeyInfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(
  Btree *p,                                   /* The btree */
  int iTable,                                 /* Root page of table to open */
  int wrFlag,                                 /* 1 to write. 0 read-only */
  struct KeyInfo *pKeyInfo,                   /* First arg to xCompare() */
  BtCursor *pCur                              /* Write new cursor here */
){
  int rc;
  if( iTable<1 ){
    rc = SQLITE_CORRUPT_BKPT;
  }else{
    FUNC1(p);
    rc = FUNC0(p, iTable, wrFlag, pKeyInfo, pCur);
    FUNC2(p);
  }
  return rc;
}