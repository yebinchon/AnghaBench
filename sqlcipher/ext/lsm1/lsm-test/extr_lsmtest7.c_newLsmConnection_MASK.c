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

/* Variables and functions */
 int /*<<< orphan*/  LSM_CONFIG_BLOCK_SIZE ; 
 int /*<<< orphan*/  LSM_CONFIG_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static lsm_db *FUNC4(
  const char *zDb, 
  int nPgsz, 
  int nBlksz,
  int *pRc
){
  lsm_db *db = 0;
  if( *pRc==0 ){
    int n1 = nPgsz;
    int n2 = nBlksz;
    *pRc = FUNC1(FUNC3(), &db);
    if( *pRc==0 ){
      if( n1 ) FUNC0(db, LSM_CONFIG_PAGE_SIZE, &n1);
      if( n2 ) FUNC0(db, LSM_CONFIG_BLOCK_SIZE, &n2);
      *pRc = FUNC2(db, "testdb.lsm");
    }
  }
  return db;
}