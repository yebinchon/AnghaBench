#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int tid; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ WorkerInfo ;

/* Variables and functions */
 int SQLITE_OK ; 
 int SQLITE_OPEN_READWRITE ; 
 int SQLITE_OPEN_SHAREDCACHE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,unsigned char const) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char*) ; 

__attribute__((used)) static void FUNC9(WorkerInfo *p, int iCnt){
  char *zFile;
  int x;
  int rc;
  static const unsigned char aOrder[6][3] = {
    { 1, 2, 3},
    { 1, 3, 2},
    { 2, 1, 3},
    { 2, 3, 1},
    { 3, 1, 2},
    { 3, 2, 1}
  };
  x = (p->tid + iCnt) % 6;
  zFile = FUNC6("tt4-test%d.db", aOrder[x][0]);
  FUNC0(zFile);
  FUNC8(p, "open %s", zFile);
  rc = FUNC7(zFile, &p->db,
                       SQLITE_OPEN_READWRITE|SQLITE_OPEN_SHAREDCACHE, 0);
  if( rc!=SQLITE_OK ){
    FUNC2(stderr, "sqlite_open_v2(%s) failed on thread %d\n",
            zFile, p->tid);
    FUNC1(1);
  }
  FUNC5(zFile);
  FUNC3(p, "PRAGMA read_uncommitted=ON;");
  FUNC4(p->db, 10000);
  FUNC3(p, "PRAGMA synchronous=OFF;");
  FUNC3(p, "ATTACH 'tt4-test%d.db' AS aux1", aOrder[x][1]);
  FUNC3(p, "ATTACH 'tt4-test%d.db' AS aux2", aOrder[x][2]);
}