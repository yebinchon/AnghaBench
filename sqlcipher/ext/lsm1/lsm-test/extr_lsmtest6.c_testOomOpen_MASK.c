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
typedef  int /*<<< orphan*/  OomTest ;

/* Variables and functions */
 int LSM_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(
  OomTest *pOom,
  const char *zName,
  lsm_db **ppDb,
  int *pRc
){
  if( *pRc==LSM_OK ){
    int rc;
    rc = FUNC0(FUNC2(), ppDb);
    if( rc==LSM_OK ) rc = FUNC1(*ppDb, zName);
    FUNC3(pOom, rc);
    *pRc = rc;
  }
}