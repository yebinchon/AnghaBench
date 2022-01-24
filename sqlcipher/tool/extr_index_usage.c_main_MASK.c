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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_OPEN_READONLY ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*,char const*) ; 
 int FUNC12 (char*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (char const*,char const*,int) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC17 (char const*,char*) ; 
 char* FUNC18 (char const*,char*) ; 
 int FUNC19 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

int FUNC21(int argc, char **argv){
  sqlite3 *db = 0;          /* The main database */
  sqlite3_stmt *pStmt = 0;  /* a query */
  char *zSql;
  int nErr = 0;
  int rc;
  int bQuiet = 0;
  int i, j;
  const char *zUsing = 0;
  sqlite3_stmt *pIncrCnt = 0;
  int nRow = 0;
  int iProgress = 0;

  for(i=j=1; i<argc; i++){
    const char *z = argv[i];
    if( z[0]=='-' ){
      z++;
      if( z[0]=='-' ) z++;
      if( FUNC17(z,"progress")==0 ){
        if( i+1<argc ){
          iProgress = FUNC19(argv[++i],0,0);
          continue;
        }
        FUNC2("The --progress option requires an argument\n");
        FUNC0(0);
      }
      if( FUNC17(z,"q")==0 ){
        bQuiet = 1;
        continue;
      }
      if( FUNC17(z,"using")==0 ){
        if( i+1<argc ){
          zUsing = argv[++i];
          continue;
        }
        FUNC2("The --using option requires an argument\n");
        FUNC0(0);
      }
      if( FUNC17(z, "help")==0 || FUNC17(z, "?")==0 ){
        FUNC20(argv[0]);
      }
      FUNC2("Unknown command-line option: \"%s\"\n", argv[i]);
      FUNC0(0);
    }else{
      if( j<i ) argv[j++] = argv[i];
    }
  }
  argc = j;

  if( argc!=3 ) FUNC20(argv[0]);
  rc = FUNC12(argv[1], &db, SQLITE_OPEN_READONLY, 0);
  if( rc ){
    FUNC2("Cannot open \"%s\" for reading: %s\n", argv[1], FUNC7(db));
    goto errorOut;
  }
  rc = FUNC13(db, "SELECT * FROM sqlite_master", -1, &pStmt, 0);
  if( rc ){
    FUNC2("Cannot read the schema from \"%s\" - %s\n", argv[1],
           FUNC7(db));
    goto errorOut;
  }
  FUNC9(pStmt);
  pStmt = 0;
  rc = FUNC8(db, 
     "CREATE TABLE temp.idxu(\n"
     "  tbl TEXT COLLATE nocase,\n"
     "  idx TEXT COLLATE nocase,\n"
     "  cnt INT,\n"
     "  PRIMARY KEY(idx)\n"
     ") WITHOUT ROWID;", 0, 0, 0);
  if( rc ){
    FUNC2("Cannot create the result table - %s\n",
           FUNC7(db));
    goto errorOut;
  }
  rc = FUNC8(db,
     "INSERT INTO temp.idxu(tbl,idx,cnt)"
     " SELECT tbl_name, name, 0 FROM sqlite_master"
     " WHERE type='index' AND sql IS NOT NULL", 0, 0, 0);

  /* Open the LOG database */
  zSql = FUNC11("ATTACH %Q AS log", argv[2]);
  rc = FUNC8(db, zSql, 0, 0, 0);
  FUNC10(zSql);
  if( rc ){
    FUNC2("Cannot open the LOG database \"%s\" - %s\n",
           argv[2], FUNC7(db));
    goto errorOut;
  }
  rc = FUNC13(db,
     "SELECT sql, rowid FROM log.sqllog"
     " WHERE upper(substr(sql,1,5)) NOT IN ('BEGIN','COMMI','ROLLB','PRAGM')",
                          -1, &pStmt, 0);
  if( rc ){
    FUNC2("Cannot read the SQLLOG table in the LOG database \"%s\" - %s\n",
           argv[2], FUNC7(db));
    goto errorOut;
  }

  rc = FUNC13(db,
    "UPDATE temp.idxu SET cnt=cnt+1 WHERE idx=?1",
    -1, &pIncrCnt, 0);
  if( rc ){
    FUNC2("Cannot prepare a statement to increment a counter for "
           "indexes used\n");
    goto errorOut;
  }

  /* Update the counts based on LOG */
  while( FUNC15(pStmt)==SQLITE_ROW ){
    const char *zLog = (const char*)FUNC6(pStmt, 0);
    sqlite3_stmt *pS2;
    if( zLog==0 ) continue;
    zSql = FUNC11("EXPLAIN QUERY PLAN %s", zLog);
    rc = FUNC13(db, zSql, -1, &pS2, 0);
    FUNC10(zSql);
    if( rc ){
      if( !bQuiet ){
        FUNC2("Cannot compile LOG entry %d (%s): %s\n",
             FUNC5(pStmt, 1), zLog, FUNC7(db));
        FUNC1(stdout);
      }
      nErr++;
    }else{
      nRow++;
      if( iProgress>0 && (nRow%iProgress)==0 ){
        FUNC2("%d...\n", nRow);
        FUNC1(stdout);
      }
      while( FUNC15(pS2)==SQLITE_ROW ){
        const char *zExplain = (const char*)FUNC6(pS2,3);
        const char *z1, *z2;
        int n;
        /* printf("EXPLAIN: %s\n", zExplain); */
        z1 = FUNC18(zExplain, " USING INDEX ");
        if( z1==0 ) continue;
        z1 += 13;
        for(z2=z1+1; z2[0] && z2[1]!='('; z2++){}
        n = z2 - z1;
        if( zUsing && FUNC16(zUsing, z1, n)==0 ){
          FUNC2("Using %s:\n%s\n", zUsing, zLog);
          FUNC1(stdout);
        }
        FUNC3(pIncrCnt,1,z1,n,SQLITE_STATIC);
        FUNC15(pIncrCnt);
        FUNC14(pIncrCnt);
      }
    }
    FUNC9(pS2);
  }
  FUNC9(pStmt);

  /* Generate the report */
  rc = FUNC13(db,
     "SELECT tbl, idx, cnt, "
     "   (SELECT group_concat(name,',') FROM pragma_index_info(idx))"
     " FROM temp.idxu, main.sqlite_master"
     " WHERE temp.idxu.tbl=main.sqlite_master.tbl_name"
     "   AND temp.idxu.idx=main.sqlite_master.name"
     " ORDER BY cnt DESC, tbl, idx",
     -1, &pStmt, 0);
  if( rc ){
    FUNC2("Cannot query the result table - %s\n",
           FUNC7(db));
    goto errorOut;
  }
  while( FUNC15(pStmt)==SQLITE_ROW ){
    FUNC2("%10d %s on %s(%s)\n", 
       FUNC5(pStmt, 2),
       FUNC6(pStmt, 1),
       FUNC6(pStmt, 0),
       FUNC6(pStmt, 3));
  }
  FUNC9(pStmt);
  pStmt = 0;

errorOut:
  FUNC9(pIncrCnt);
  FUNC9(pStmt);
  FUNC4(db);
  return nErr;
}