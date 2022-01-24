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
typedef  int i64 ;
typedef  int /*<<< orphan*/  Sqlite ;
typedef  int /*<<< orphan*/  Error ;

/* Variables and functions */
 int CALLGRINDTEST1_NROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC2(Error *pErr, Sqlite *pDb){
  i64 iRow;
  FUNC1(pErr, pDb, "BEGIN");
  for(iRow=1; iRow<=CALLGRINDTEST1_NROW; iRow++){
    FUNC0(pErr, pDb, "SELECT * FROM t1 WHERE a = :iRow", &iRow);
  }
  FUNC1(pErr, pDb, "COMMIT");
}