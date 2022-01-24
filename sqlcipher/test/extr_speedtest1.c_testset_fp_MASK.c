#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int szTest; int /*<<< orphan*/  pStmt; int /*<<< orphan*/  zNN; } ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_STATIC ; 
 TYPE_1__ g ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ) ; 

void FUNC8(void){
  int n;
  int i;
  char zFP1[100];
  char zFP2[100];
  
  n = g.szTest*5000;
  FUNC1(100, "Fill a table with %d FP values", n*2);
  FUNC3("BEGIN");
  FUNC3("CREATE%s TABLE t1(a REAL %s, b REAL %s);",
                  FUNC0(1), g.zNN, g.zNN);
  FUNC4("INSERT INTO t1 VALUES(?1,?2); -- %d times", n);
  for(i=1; i<=n; i++){
    FUNC5(zFP1);
    FUNC5(zFP2);
    FUNC7(g.pStmt, 1, zFP1, -1, SQLITE_STATIC);
    FUNC7(g.pStmt, 2, zFP2, -1, SQLITE_STATIC);
    FUNC6();
  }
  FUNC3("COMMIT");
  FUNC2();

  n = g.szTest/25 + 2;
  FUNC1(110, "%d range queries", n);
  FUNC4("SELECT sum(b) FROM t1 WHERE a BETWEEN ?1 AND ?2");
  for(i=1; i<=n; i++){
    FUNC5(zFP1);
    FUNC5(zFP2);
    FUNC7(g.pStmt, 1, zFP1, -1, SQLITE_STATIC);
    FUNC7(g.pStmt, 2, zFP2, -1, SQLITE_STATIC);
    FUNC6();
  }
  FUNC2();

  FUNC1(120, "CREATE INDEX three times");
  FUNC3("BEGIN;");
  FUNC3("CREATE INDEX t1a ON t1(a);");
  FUNC3("CREATE INDEX t1b ON t1(b);");
  FUNC3("CREATE INDEX t1ab ON t1(a,b);");
  FUNC3("COMMIT;");
  FUNC2();

  n = g.szTest/3 + 2;
  FUNC1(130, "%d indexed range queries", n);
  FUNC4("SELECT sum(b) FROM t1 WHERE a BETWEEN ?1 AND ?2");
  for(i=1; i<=n; i++){
    FUNC5(zFP1);
    FUNC5(zFP2);
    FUNC7(g.pStmt, 1, zFP1, -1, SQLITE_STATIC);
    FUNC7(g.pStmt, 2, zFP2, -1, SQLITE_STATIC);
    FUNC6();
  }
  FUNC2();
}