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
typedef  int /*<<< orphan*/  sqlite ;

/* Variables and functions */
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC13(int argc, char **argv){
  int i;
  sqlite *db;
  char *zErr;
  int status;
  int parent = FUNC2();

  FUNC10("test.db");
  FUNC10("test.db-journal");
  db = FUNC9("test.db", 0, &zErr);
  if( db==0 ){
    FUNC4("Cannot initialize: %s\n", zErr);
    return 1;
  }
  FUNC8(db, "CREATE TABLE t1(a,b)", 0, 0, 0);
  FUNC7(db);
  for(i=0; i<10000; i++){
    int pid = FUNC1();
    if( pid==0 ){
      FUNC6();
      FUNC0(parent);
      return 0;
    }
    FUNC4("test %d, pid=%d\n", i, pid);
    FUNC11(FUNC5()%10000 + 1000);
    FUNC3(pid, SIGKILL);
    FUNC12(pid, &status, 0);
  }
  return 0;
}