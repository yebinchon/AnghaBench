#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zLine ;
typedef  int /*<<< orphan*/  lsm_file ;
struct TYPE_4__ {int (* xOpen ) (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ;int (* xSync ) (int /*<<< orphan*/ *) ;int (* xWrite ) (int /*<<< orphan*/ *,int,char*,int) ;int /*<<< orphan*/  (* xClose ) (int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ lsm_env ;
typedef  int /*<<< orphan*/  aBuf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int FUNC6 (char*,char*,int*,int*) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int FUNC8 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static int FUNC14(int nArg, char **azArg){
  char aBuf[4096];
  FILE *pInput;
  FILE *pClose = 0;
  const char *zDb;

  lsm_env *pEnv;
  lsm_file *pOut;
  int rc;

  if( nArg!=2 ){
    FUNC13("Usage: replay WRITELOG FILE\n");
    return 1;
  }

  if( FUNC7(azArg[0], "-")==0 ){
    pInput = stdin;
  }else{
    pClose = pInput = FUNC3(azArg[0], "r");
  }
  zDb = azArg[1];
  pEnv = FUNC12();
  rc = pEnv->xOpen(pEnv, zDb, 0, &pOut);
  if( rc!=LSM_OK ) return rc;

  while( FUNC1(pInput)==0 ){
    char zLine[80];
    FUNC2(zLine, sizeof(zLine)-1, pInput);
    zLine[sizeof(zLine)-1] = '\0';

    if( 0==FUNC4("sync db", zLine, 7) ){
      rc = pEnv->xSync(pOut);
      if( rc!=0 ) break;
    }else{
      int iOff;
      int nData;
      int nMatch;
      nMatch = FUNC6(zLine, "write db %d %d", &iOff, &nData);
      if( nMatch==2 ){
        int i;
        for(i=0; i<nData; i+=sizeof(aBuf)){
          FUNC5(aBuf, i&0xFF, sizeof(aBuf));
          rc = pEnv->xWrite(pOut, iOff+i, aBuf, sizeof(aBuf));
          if( rc!=0 ) break;
        }
      }
    }
  }
  if( pClose ) FUNC0(pClose);
  pEnv->xClose(pOut);

  return rc;
}