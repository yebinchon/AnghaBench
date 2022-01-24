#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct Option   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lsm_db ;
struct Option {char const* zName; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSM_CONFIG_AUTOCHECKPOINT ; 
 int /*<<< orphan*/  LSM_CONFIG_BLOCK_SIZE ; 
 int LSM_OK ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int FUNC10(int nArg, char **azArg){
  struct Option {
    const char *zName;
  } aOpt [] = {
    { "-nmerge" },
    { "-nkb" },
    { 0 }
  };

  lsm_db *pDb;
  int rc;
  int i;
  const char *zDb;
  int nMerge = 1;
  int nKB = (1<<30);

  if( nArg==0 ) goto usage;
  zDb = azArg[nArg-1];
  for(i=0; i<(nArg-1); i++){
    int iSel;
    rc = FUNC7(aOpt, "option", azArg[i], &iSel);
    if( rc ) return rc;
    switch( iSel ){
      case 0:
        i++;
        if( i==(nArg-1) ) goto usage;
        nMerge = FUNC0(azArg[i]);
        break;
      case 1:
        i++;
        if( i==(nArg-1) ) goto usage;
        nKB = FUNC0(azArg[i]);
        break;
    }
  }

  rc = FUNC4(0, &pDb);
  if( rc!=LSM_OK ){
    FUNC8("lsm_open(): rc=%d\n", rc);
  }else{
    rc = FUNC5(pDb, zDb);
    if( rc!=LSM_OK ){
      FUNC8("lsm_open(): rc=%d\n", rc);
    }else{
      int n = -1;
      FUNC3(pDb, LSM_CONFIG_BLOCK_SIZE, &n);
      n = n*2;
      FUNC3(pDb, LSM_CONFIG_AUTOCHECKPOINT, &n);

      rc = FUNC6(pDb, nMerge, nKB, 0);
      if( rc!=LSM_OK ){
        FUNC8("lsm_work(): rc=%d\n", rc);
      }
    }
  }
  if( rc==LSM_OK ){
    rc = FUNC1(pDb, 0);
  }

  FUNC2(pDb);
  return rc;

 usage:
  FUNC9("?-optimize? ?-n N? DATABASE");
  return -1;
}