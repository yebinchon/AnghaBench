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
typedef  int /*<<< orphan*/  lsm_db ;
typedef  int /*<<< orphan*/  lsm_cursor ;
typedef  int /*<<< orphan*/  MultiCursor ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(lsm_cursor *p){
  if( p ){
    lsm_db *pDb = FUNC3((MultiCursor *)p);
    FUNC0(pDb);
    FUNC2((MultiCursor *)p, 1);
    FUNC1(pDb);
    FUNC0(pDb);
  }
  return LSM_OK;
}