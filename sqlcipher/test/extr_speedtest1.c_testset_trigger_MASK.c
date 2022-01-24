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
typedef  int /*<<< orphan*/  zNum ;
struct TYPE_2__ {int szTest; int /*<<< orphan*/  pStmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_STATIC ; 
 TYPE_1__ g ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int const FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ) ; 

void FUNC9(void){
  int jj, ii;
  char zNum[2000];              /* A number name */

  const int NROW  = 500*g.szTest;
  const int NROW2 = 100*g.szTest;

  FUNC2(
      "BEGIN;"
      "CREATE TABLE t1(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);"
      "CREATE TABLE t2(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);"
      "CREATE TABLE t3(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);"
      "CREATE VIEW v1 AS SELECT rowid, i, t FROM t1;"
      "CREATE VIEW v2 AS SELECT rowid, i, t FROM t2;"
      "CREATE VIEW v3 AS SELECT rowid, i, t FROM t3;"
  );
  for(jj=1; jj<=3; jj++){
    FUNC4("INSERT INTO t%d VALUES(NULL,?1,?2)", jj);
    for(ii=0; ii<NROW; ii++){
      int x1 = FUNC5() % NROW;
      FUNC3(x1, zNum, sizeof(zNum));
      FUNC7(g.pStmt, 1, x1);
      FUNC8(g.pStmt, 2, zNum, -1, SQLITE_STATIC);
      FUNC6();
    }
  }
  FUNC2(
      "CREATE INDEX i1 ON t1(t);"
      "CREATE INDEX i2 ON t2(t);"
      "CREATE INDEX i3 ON t3(t);"
      "COMMIT;"
  );

  FUNC0(100, "speed4p-join1");
  FUNC4(
      "SELECT * FROM t1, t2, t3 WHERE t1.oid = t2.oid AND t2.oid = t3.oid"
  );
  FUNC6();
  FUNC1();

  FUNC0(110, "speed4p-join2");
  FUNC4(
      "SELECT * FROM t1, t2, t3 WHERE t1.t = t2.t AND t2.t = t3.t"
  );
  FUNC6();
  FUNC1();

  FUNC0(120, "speed4p-view1");
  for(jj=1; jj<=3; jj++){
    FUNC4("SELECT * FROM v%d WHERE rowid = ?", jj);
    for(ii=0; ii<NROW2; ii+=3){
      FUNC7(g.pStmt, 1, ii*3);
      FUNC6();
    }
  }
  FUNC1();

  FUNC0(130, "speed4p-table1");
  for(jj=1; jj<=3; jj++){
    FUNC4("SELECT * FROM t%d WHERE rowid = ?", jj);
    for(ii=0; ii<NROW2; ii+=3){
      FUNC7(g.pStmt, 1, ii*3);
      FUNC6();
    }
  }
  FUNC1();

  FUNC0(140, "speed4p-table1");
  for(jj=1; jj<=3; jj++){
    FUNC4("SELECT * FROM t%d WHERE rowid = ?", jj);
    for(ii=0; ii<NROW2; ii+=3){
      FUNC7(g.pStmt, 1, ii*3);
      FUNC6();
    }
  }
  FUNC1();

  FUNC0(150, "speed4p-subselect1");
  FUNC4("SELECT "
      "(SELECT t FROM t1 WHERE rowid = ?1),"
      "(SELECT t FROM t2 WHERE rowid = ?1),"
      "(SELECT t FROM t3 WHERE rowid = ?1)"
  );
  for(jj=0; jj<NROW2; jj++){
    FUNC7(g.pStmt, 1, jj*3);
    FUNC6();
  }
  FUNC1();

  FUNC0(160, "speed4p-rowid-update");
  FUNC2("BEGIN");
  FUNC4("UPDATE t1 SET i=i+1 WHERE rowid=?1");
  for(jj=0; jj<NROW2; jj++){
    FUNC7(g.pStmt, 1, jj);
    FUNC6();
  }
  FUNC2("COMMIT");
  FUNC1();

  FUNC2("CREATE TABLE t5(t TEXT PRIMARY KEY, i INTEGER);");
  FUNC0(170, "speed4p-insert-ignore");
  FUNC2("INSERT OR IGNORE INTO t5 SELECT t, i FROM t1");
  FUNC1();

  FUNC2(
      "CREATE TABLE log(op TEXT, r INTEGER, i INTEGER, t TEXT);"
      "CREATE TABLE t4(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);"
      "CREATE TRIGGER t4_trigger1 AFTER INSERT ON t4 BEGIN"
      "  INSERT INTO log VALUES('INSERT INTO t4', new.rowid, new.i, new.t);"
      "END;"
      "CREATE TRIGGER t4_trigger2 AFTER UPDATE ON t4 BEGIN"
      "  INSERT INTO log VALUES('UPDATE OF t4', new.rowid, new.i, new.t);"
      "END;"
      "CREATE TRIGGER t4_trigger3 AFTER DELETE ON t4 BEGIN"
      "  INSERT INTO log VALUES('DELETE OF t4', old.rowid, old.i, old.t);"
      "END;"
      "BEGIN;"
  );

  FUNC0(180, "speed4p-trigger1");
  FUNC4("INSERT INTO t4 VALUES(NULL, ?1, ?2)");
  for(jj=0; jj<NROW2; jj++){
    FUNC3(jj, zNum, sizeof(zNum));
    FUNC7(g.pStmt, 1, jj);
    FUNC8(g.pStmt, 2, zNum, -1, SQLITE_STATIC);
    FUNC6();
  }
  FUNC1();

  /*
  ** Note: Of the queries, only half actually update a row. This property
  ** was copied over from speed4p.test, where it was probably introduced
  ** inadvertantly.
  */
  FUNC0(190, "speed4p-trigger2");
  FUNC4("UPDATE t4 SET i = ?1, t = ?2 WHERE rowid = ?3");
  for(jj=1; jj<=NROW2*2; jj+=2){
    FUNC3(jj*2, zNum, sizeof(zNum));
    FUNC7(g.pStmt, 1, jj*2);
    FUNC8(g.pStmt, 2, zNum, -1, SQLITE_STATIC);
    FUNC7(g.pStmt, 3, jj);
    FUNC6();
  }
  FUNC1();

  /*
  ** Note: Same again.
  */
  FUNC0(200, "speed4p-trigger3");
  FUNC4("DELETE FROM t4 WHERE rowid = ?1");
  for(jj=1; jj<=NROW2*2; jj+=2){
    FUNC7(g.pStmt, 1, jj*2);
    FUNC6();
  }
  FUNC1();
  FUNC2("COMMIT");

  /*
  ** The following block contains the same tests as the above block that
  ** tests triggers, with one crucial difference: no triggers are defined.
  ** So the difference in speed between these tests and the preceding ones
  ** is the amount of time taken to compile and execute the trigger programs.
  */
  FUNC2(
      "DROP TABLE t4;"
      "DROP TABLE log;"
      "VACUUM;"
      "CREATE TABLE t4(rowid INTEGER PRIMARY KEY, i INTEGER, t TEXT);"
      "BEGIN;"
  );
  FUNC0(210, "speed4p-notrigger1");
  FUNC4("INSERT INTO t4 VALUES(NULL, ?1, ?2)");
  for(jj=0; jj<NROW2; jj++){
    FUNC3(jj, zNum, sizeof(zNum));
    FUNC7(g.pStmt, 1, jj);
    FUNC8(g.pStmt, 2, zNum, -1, SQLITE_STATIC);
    FUNC6();
  }
  FUNC1();
  FUNC0(210, "speed4p-notrigger2");
  FUNC4("UPDATE t4 SET i = ?1, t = ?2 WHERE rowid = ?3");
  for(jj=1; jj<=NROW2*2; jj+=2){
    FUNC3(jj*2, zNum, sizeof(zNum));
    FUNC7(g.pStmt, 1, jj*2);
    FUNC8(g.pStmt, 2, zNum, -1, SQLITE_STATIC);
    FUNC7(g.pStmt, 3, jj);
    FUNC6();
  }
  FUNC1();
  FUNC0(220, "speed4p-notrigger3");
  FUNC4("DELETE FROM t4 WHERE rowid = ?1");
  for(jj=1; jj<=NROW2*2; jj+=2){
    FUNC7(g.pStmt, 1, jj*2);
    FUNC6();
  }
  FUNC1();
  FUNC2("COMMIT");
}