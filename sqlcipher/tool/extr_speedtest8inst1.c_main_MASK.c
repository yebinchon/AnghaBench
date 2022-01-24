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
typedef  int /*<<< orphan*/  sqlite3_vfs ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int SQLITE_OK ; 
 int SQLITE_OPEN_CREATE ; 
 int SQLITE_OPEN_READWRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (char const*,int*) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ **,int,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*,char*) ; 

int FUNC10(int argc, char **argv){

  const char zUsageMsg[] = 
    "Usage: %s options...\n"
    "  where available options are:\n"
    "\n"
    "    -db      DATABASE-FILE  (database file to operate on)\n"
    "    -script  SCRIPT-FILE    (script file to read sql from)\n"
    "    -log     LOG-FILE       (log file to create)\n"
    "    -logdata                (log all data to log file)\n"
    "\n"
    "  Options -db, -script and -log are compulsory\n"
    "\n"
  ;

  const char *zDb = 0;
  const char *zScript = 0;
  const char *zLog = 0;
  int logdata = 0;

  int ii;
  int i, j;
  int rc;

  sqlite3_vfs *pInstVfs;                 /* Instrumentation VFS */

  char *zSql = 0;
  int nSql;

  sqlite3 *db;

  for(ii=1; ii<argc; ii++){
    if( FUNC9("-db", argv[ii]) && (ii+1)<argc ){
      zDb = argv[++ii];
    }

    else if( FUNC9("-script", argv[ii]) && (ii+1)<argc ){
      zScript = argv[++ii];
    }

    else if( FUNC9("-log", argv[ii]) && (ii+1)<argc ){
      zLog = argv[++ii];
    }

    else if( FUNC9("-logdata", argv[ii]) ){
      logdata = 1;
    }

    else {
      goto usage;
    }
  }
  if( !zDb || !zScript || !zLog ) goto usage;

  zSql = FUNC3(zScript, &nSql);
  if( !zSql ){
    FUNC1(stderr, "Failed to read script file\n");
    return -1;
  }

  pInstVfs = FUNC6("logging", 0, zLog, logdata);

  rc = FUNC8(
     zDb, &db, SQLITE_OPEN_READWRITE | SQLITE_OPEN_CREATE, "logging"
  );
  if( rc!=SQLITE_OK ){
    FUNC1(stderr, "Failed to open db: %s\n", FUNC5(db));
    return -2;
  }

  for(i=j=0; j<nSql; j++){
    if( zSql[j]==';' ){
      int isComplete;
      char c = zSql[j+1];
      zSql[j+1] = 0;
      isComplete = FUNC4(&zSql[i]);
      zSql[j+1] = c;
      if( isComplete ){
        zSql[j] = 0;
        while( i<j && FUNC0(zSql[i]) ){ i++; }
        if( i<j ){
          FUNC2(pInstVfs, db, &zSql[i]);
        }
        zSql[j] = ';';
        i = j+1;
      }
    }
  }
  
  FUNC7(pInstVfs);
  return 0;
  
usage:
  FUNC1(stderr, zUsageMsg, argv[0]);
  return -3;
}