#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_16__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ Sqlite ;
typedef  TYPE_2__ Error ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  SQLITE_BUSY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*,char const*) ; 
 char* FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static char *FUNC11(int iTid, void *pArg){
  Error err = {0};                /* Error code and message */
  Sqlite db = {0};                /* SQLite database connection */
  int anTrans[2] = {0, 0};        /* Number of WAL and Rollback transactions */
  int iArg = FUNC0(pArg);

  const char *zJournal = "PRAGMA journal_mode = WAL";
  if( iArg ){ zJournal = "PRAGMA journal_mode = DELETE"; }

  while( !FUNC10(&err) ){
    int journal_exists = 0;
    int wal_exists = 0;

    FUNC5(&err, &db, "test.db", 0);

    FUNC7(&err, &db, zJournal);
    FUNC1(&err, SQLITE_BUSY);
    FUNC7(&err, &db, "BEGIN");
    FUNC7(&err, &db, "INSERT INTO t1 VALUES(NULL, randomblob(100))");

    journal_exists = (FUNC3(&err, "test.db-journal") >= 0);
    wal_exists = (FUNC3(&err, "test.db-wal") >= 0);
    if( (journal_exists+wal_exists)!=1 ){
      FUNC9(&err, "File system looks incorrect (%d, %d)", 
          journal_exists, wal_exists
      );
    }
    anTrans[journal_exists]++;

    FUNC7(&err, &db, "COMMIT");
    FUNC4(&err, &db);
    FUNC2(&err, &db);
  }

  FUNC6(&err);
  return FUNC8("W %d R %d", anTrans[0], anTrans[1]);
}