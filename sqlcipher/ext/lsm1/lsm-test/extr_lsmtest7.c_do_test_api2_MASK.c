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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int,int*) ; 
 scalar_t__ FUNC2 (int*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int*) ; 

__attribute__((used)) static void FUNC6(const char *zPattern, int *pRc){
  if( *pRc==0 && FUNC2(pRc, zPattern, "api2.lsm") ){
    lsm_db *db1 = 0;
    lsm_db *db2 = 0;

    FUNC4("testdb.lsm");
    db1 = FUNC1("testdb.lsm", 0, 0, pRc);
    FUNC5(db1, 4096, 1024, pRc);
    db2 = FUNC1("testdb.lsm", 1024, 64*1024, pRc);
    FUNC5(db2, 4096, 1024, pRc);
    FUNC0(db1);
    FUNC0(db2);

    FUNC4("testdb.lsm");
    db1 = FUNC1("testdb.lsm", 1024, 64*1024, pRc);
    FUNC5(db1, 1024, 64*1024, pRc);
    db2 = FUNC1("testdb.lsm", 0, 0, pRc);
    FUNC5(db2, 1024, 64*1024, pRc);
    FUNC0(db1);
    FUNC0(db2);

    FUNC4("testdb.lsm");
    db1 = FUNC1("testdb.lsm", 8192, 2*1024, pRc);
    FUNC5(db1, 8192, 2*1024, pRc);
    db2 = FUNC1("testdb.lsm", 1024, 64*1024, pRc);
    FUNC5(db2, 8192, 2*1024, pRc);
    FUNC0(db1);
    FUNC0(db2);

    FUNC3(*pRc);
  }
}