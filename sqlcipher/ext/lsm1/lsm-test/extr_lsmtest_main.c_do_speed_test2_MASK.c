#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct Option   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TestDb ;
struct Option {char const* zOpt; int eVal; int iDefault; } ;
struct TYPE_5__ {int nMinKey; int nMaxKey; int nMinVal; int nMaxVal; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ DatasourceDefn ;
typedef  int /*<<< orphan*/  Datasource ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 size_t ST_FETCH ; 
 size_t ST_KEYSIZE ; 
 size_t ST_NSCAN ; 
 size_t ST_PAUSE ; 
 size_t ST_REPEAT ; 
 size_t ST_SCAN ; 
 size_t ST_TRANS ; 
 size_t ST_VALSIZE ; 
 size_t ST_WRITE ; 
 int /*<<< orphan*/  TEST_DATASOURCE_RANDOM ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  do_speed_write_hook2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 size_t j ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC9 (int /*<<< orphan*/ *,void*,int,void**,int*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (char*,char*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC13 (TYPE_3__*,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,void**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC23 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC24 (char*,char const*) ; 
 int FUNC25 (int) ; 
 int FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int*) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 

int FUNC30(int nArg, char **azArg){
  struct Option {
    const char *zOpt;
    int eVal;
    int iDefault;
  } aOpt[] = {
    { "-repeat",  ST_REPEAT,    10},
    { "-write",   ST_WRITE,  10000},
    { "-pause",   ST_PAUSE,      0},
    { "-fetch",   ST_FETCH,      0},
    { "-scan",    ST_SCAN,       0},
    { "-nscan",   ST_NSCAN,      0},
    { "-keysize", ST_KEYSIZE,   12},
    { "-valsize", ST_VALSIZE,  100},
    { "-trans",   ST_TRANS,      0},
    { "-system",  -1,            0},
    { "help",     -2,            0},
    {0, 0, 0}
  };
  int i;
  int aParam[9];
  int rc = 0;
  int bReadonly = 0;
  int nContent = 0;

  TestDb *pDb;
  Datasource *pData;
  DatasourceDefn defn = { TEST_DATASOURCE_RANDOM, 0, 0, 0, 0 };
  char *zSystem = "";
  int bLsm = 1;
  FILE *pLog = 0;

#ifdef NDEBUG
  /* If NDEBUG is defined, disable the dynamic memory related checks in
  ** lsmtest_mem.c. They slow things down.  */
  testMallocUninstall(tdb_lsm_env());
#endif

  /* Initialize aParam[] with default values. */
  for(i=0; i<FUNC0(aOpt); i++){
    if( aOpt[i].zOpt ) aParam[aOpt[i].eVal] = aOpt[i].iDefault;
  }

  /* Process the command line switches. */
  for(i=0; i<nArg; i+=2){
    int iSel;
    rc = FUNC13(aOpt, "switch", azArg[i], &iSel);
    if( rc ){
      return rc;
    }
    if( aOpt[iSel].eVal==-2 ){
      FUNC6();
      return 0;
    }
    if( i+1==nArg ){
      FUNC24("option %s requires an argument\n", aOpt[iSel].zOpt);
      return 1;
    }
    if( aOpt[iSel].eVal>=0 ){
      aParam[aOpt[iSel].eVal] = FUNC1(azArg[i+1]);
    }else{
      zSystem = azArg[i+1];
      bLsm = 0;
#if 0
      for(j=0; zSystem[j]; j++){
        if( zSystem[j]=='=' ) bLsm = 1;
      }
#endif
    }
  }
  
  FUNC7("#");
  for(i=0; i<FUNC0(aOpt); i++){
    if( aOpt[i].zOpt ){
      if( aOpt[i].eVal>=0 ){
        FUNC7(" %s=%d", &aOpt[i].zOpt[1], aParam[aOpt[i].eVal]);
      }else if( aOpt[i].eVal==-1 ){
        FUNC7(" %s=\"%s\"", &aOpt[i].zOpt[1], zSystem);
      }
    }
  }
  FUNC7("\n");

  defn.nMinKey = defn.nMaxKey = aParam[ST_KEYSIZE];
  defn.nMinVal = defn.nMaxVal = aParam[ST_VALSIZE];
  pData = FUNC21(&defn);

  if( aParam[ST_WRITE]==0 ){
    bReadonly = 1;
  }

  if( bLsm ){
    rc = FUNC11(zSystem, "testdb.lsm", !bReadonly, &pDb);
  }else{
    pDb = FUNC23(zSystem, !bReadonly, &rc);
  }
  if( rc!=0 ) return rc;
  if( bReadonly ){
    nContent = FUNC17(pDb);
  }

#if 0
  pLog = fopen("/tmp/speed.log", "w");
  tdb_lsm_write_hook(pDb, do_speed_write_hook2, (void *)pLog);
#endif

  for(i=0; i<aParam[ST_REPEAT] && rc==0; i++){
    int msWrite, msFetch;
    int iFetch;
    int nWrite = aParam[ST_WRITE];

    if( bReadonly ){
      msWrite = 0;
    }else{
      FUNC27();

      if( aParam[ST_TRANS] ) FUNC14(pDb, 2, &rc);
      FUNC28(pDb, pData, i*nWrite, nWrite, &rc);
      if( aParam[ST_TRANS] ) FUNC16(pDb, 0, &rc);

      msWrite = FUNC26();
      nContent += nWrite;
    }

    if( aParam[ST_PAUSE] ){
      if( aParam[ST_PAUSE]/1000 ) FUNC8(aParam[ST_PAUSE]/1000);
      if( aParam[ST_PAUSE]%1000 ) FUNC29(1000 * (aParam[ST_PAUSE]%1000));
    }

    if( aParam[ST_FETCH] ){
      FUNC27();
      if( aParam[ST_TRANS] ) FUNC14(pDb, 1, &rc);
      for(iFetch=0; iFetch<aParam[ST_FETCH]; iFetch++){
        int iKey = FUNC25(i*nWrite+iFetch) % nContent;
#ifndef NDEBUG
        FUNC19(pDb, pData, iKey, &rc);
#else
        void *pKey; int nKey;           /* Database key to query for */
        void *pVal; int nVal;           /* Result of query */

        testDatasourceEntry(pData, iKey, &pKey, &nKey, 0, 0);
        rc = tdb_fetch(pDb, pKey, nKey, &pVal, &nVal);
        if( rc==0 && nVal<0 ) rc = 1;
        if( rc ) break;
#endif
      }
      if( aParam[ST_TRANS] ) FUNC16(pDb, 0, &rc);
      msFetch = FUNC26();
    }else{
      msFetch = 0;
    }

    if( i==(aParam[ST_REPEAT]-1) ){
      FUNC27();
      FUNC15(&pDb);
      msWrite += FUNC26();
    }

    FUNC7("%d %d %d\n", i, msWrite, msFetch);
    FUNC3(stdout);
  }

  FUNC15(&pDb);
  FUNC20(pData);

  if( pLog ){
    FUNC4(pLog);
    FUNC2(pLog);
  }
  return rc;
}