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
typedef  int /*<<< orphan*/  zBuf ;
typedef  int /*<<< orphan*/  sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
#define  SQLITE_DONE 129 
#define  SQLITE_OK 128 
 int /*<<< orphan*/  SQLITE_STATUS_MEMORY_USED ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC11 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC13 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (char const*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

int FUNC19(int argc, char **argv){
  int i;
  const char *zTarget;            /* Target database to apply RBU to */
  const char *zRbu;               /* Database containing RBU */
  char zBuf[200];                 /* Buffer for printf() */
  char *zErrmsg = 0;              /* Error message, if any */
  sqlite3rbu *pRbu;               /* RBU handle */
  int nStep = 0;                  /* Maximum number of step() calls */
  int nStatStep = 0;              /* Report stats after this many step calls */
  int bVacuum = 0;
  const char *zPreSql = 0;
  int rc = SQLITE_OK;
  sqlite3_int64 nProgress = 0;
  int nArgc = argc-2;

  if( argc<3 ) FUNC18(argv[0]);
  for(i=1; i<nArgc; i++){
    const char *zArg = argv[i];
    int nArg = FUNC17(zArg);
    if( nArg>1 && nArg<=8 && 0==FUNC3(zArg, "-vacuum", nArg) ){
      bVacuum = 1;
    }else if( nArg>1 && nArg<=7 
           && 0==FUNC3(zArg, "-presql", nArg) && i<nArg-1 ){
      i++;
      zPreSql = argv[i];
    }else if( nArg>1 && nArg<=5 && 0==FUNC3(zArg, "-step", nArg) && i<nArg-1 ){
      i++;
      nStep = FUNC0(argv[i]);
    }else if( nArg>1 && nArg<=9 
           && 0==FUNC3(zArg, "-statstep", nArg) && i<nArg-1 
    ){
      i++;
      nStatStep = FUNC0(argv[i]);
    }else{
      FUNC18(argv[0]);
    }
  }

  zTarget = argv[argc-2];
  zRbu = argv[argc-1];

  FUNC4();

  /* Open an RBU handle. A vacuum handle if -vacuum was specified, or a
  ** regular RBU update handle otherwise.  */
  if( bVacuum ){
    pRbu = FUNC16(zTarget, zRbu);
  }else{
    pRbu = FUNC13(zTarget, zRbu, 0);
  }
  FUNC5(pRbu);

  if( zPreSql && pRbu ){
    sqlite3 *dbMain = FUNC12(pRbu, 0);
    rc = FUNC6(dbMain, zPreSql, 0, 0, 0);
    if( rc==SQLITE_OK ){
      sqlite3 *dbRbu = FUNC12(pRbu, 1);
      rc = FUNC6(dbRbu, zPreSql, 0, 0, 0);
    }
  }

  /* If nStep is less than or equal to zero, call
  ** sqlite3rbu_step() until either the RBU has been completely applied
  ** or an error occurs. Or, if nStep is greater than zero, call
  ** sqlite3rbu_step() a maximum of nStep times.  */
  if( rc==SQLITE_OK ){
    for(i=0; (nStep<=0 || i<nStep) && FUNC15(pRbu)==SQLITE_OK; i++){
      if( nStatStep>0 && (i % nStatStep)==0 ){
        sqlite3_int64 nUsed;
        sqlite3_int64 nHighwater;
        FUNC9(SQLITE_STATUS_MEMORY_USED, &nUsed, &nHighwater, 0);
        FUNC2(stdout, "memory used=%d highwater=%d", nUsed, nHighwater);
        if( bVacuum==0 ){
          int one;
          int two;
          FUNC10(pRbu, &one, &two);
          FUNC2(stdout, "  progress=%d/%d\n", one, two);
        }else{
          FUNC2(stdout, "\n");
        }
        FUNC1(stdout);
      }
    }
    nProgress = FUNC14(pRbu);
    rc = FUNC11(pRbu, &zErrmsg);
  }

  /* Let the user know what happened. */
  switch( rc ){
    case SQLITE_OK:
      FUNC8(sizeof(zBuf), zBuf,
          "SQLITE_OK: rbu update incomplete (%lld operations so far)\n",
          nProgress
      );
      FUNC2(stdout, "%s", zBuf);
      break;

    case SQLITE_DONE:
      FUNC8(sizeof(zBuf), zBuf,
          "SQLITE_DONE: rbu update completed (%lld operations)\n",
          nProgress
      );
      FUNC2(stdout, "%s", zBuf);
      break;

    default:
      FUNC2(stderr, "error=%d: %s\n", rc, zErrmsg);
      break;
  }

  FUNC7(zErrmsg);
  return (rc==SQLITE_OK || rc==SQLITE_DONE) ? 0 : 1;
}