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
struct Option {char const* zName; int bConfig; int eOpt; } ;

/* Variables and functions */
 int LSM_CONFIG_BLOCK_SIZE ; 
 int LSM_CONFIG_PAGE_SIZE ; 
#define  LSM_INFO_ARRAY_PAGES 133 
#define  LSM_INFO_ARRAY_STRUCTURE 132 
#define  LSM_INFO_DB_STRUCTURE 131 
#define  LSM_INFO_FREELIST 130 
#define  LSM_INFO_PAGE_ASCII_DUMP 129 
#define  LSM_INFO_PAGE_HEX_DUMP 128 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC14 (TYPE_1__*,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int FUNC17(int nArg, char **azArg){
  lsm_db *pDb;
  int rc;
  const char *zDb;

  int eOpt = LSM_INFO_DB_STRUCTURE;
  unsigned int iPg = 0;
  int bConfig = 0;
  const char *zConfig = "";

  struct Option {
    const char *zName;
    int bConfig;
    int eOpt;
  } aOpt [] = { 
    { "array",       0, LSM_INFO_ARRAY_STRUCTURE },
    { "array-pages", 0, LSM_INFO_ARRAY_PAGES },
    { "blocksize",   1, LSM_CONFIG_BLOCK_SIZE },
    { "pagesize",    1, LSM_CONFIG_PAGE_SIZE },
    { "freelist",    0, LSM_INFO_FREELIST },
    { "page-ascii",  0, LSM_INFO_PAGE_ASCII_DUMP },
    { "page-hex",    0, LSM_INFO_PAGE_HEX_DUMP },
    { 0, 0 } 
  };

  char *z = 0; 
  int iDb = 0;                    /* Index of DATABASE in azArg[] */

  /* Check if there is a "-config" option: */
  if( nArg>2 && FUNC12(azArg[0])>1 
   && FUNC10(azArg[0], "-config", FUNC12(azArg[0]))==0
  ){
    zConfig = azArg[1];
    iDb = 2;
  }
  if( nArg<(iDb+1) ) goto usage;

  if( nArg>(iDb+1) ){
    rc = FUNC14(aOpt, "option", azArg[iDb+1], &eOpt);
    if( rc!=0 ) return rc;
    bConfig = aOpt[eOpt].bConfig;
    eOpt = aOpt[eOpt].eOpt;
    if( (bConfig==0 && eOpt==LSM_INFO_FREELIST)
     || (bConfig==1 && eOpt==LSM_CONFIG_BLOCK_SIZE)
     || (bConfig==1 && eOpt==LSM_CONFIG_PAGE_SIZE)
    ){
      if( nArg!=(iDb+2) ) goto usage;
    }else{
      if( nArg!=(iDb+3) ) goto usage;
      iPg = FUNC1(azArg[iDb+2]);
    }
  }
  zDb = azArg[iDb];

  rc = FUNC8(0, &pDb);
  FUNC13(pDb, zConfig);
  if( rc!=LSM_OK ){
    FUNC15("lsm_new(): rc=%d\n", rc);
  }else{
    rc = FUNC9(pDb, zDb);
    if( rc!=LSM_OK ){
      FUNC15("lsm_open(): rc=%d\n", rc);
    }
  }

  if( rc==LSM_OK ){
    if( bConfig==0 ){
      switch( eOpt ){
        case LSM_INFO_DB_STRUCTURE:
        case LSM_INFO_FREELIST:
          rc = FUNC7(pDb, eOpt, &z);
          break;
        case LSM_INFO_ARRAY_STRUCTURE:
        case LSM_INFO_ARRAY_PAGES:
        case LSM_INFO_PAGE_ASCII_DUMP:
        case LSM_INFO_PAGE_HEX_DUMP:
          rc = FUNC7(pDb, eOpt, iPg, &z);
          break;
        default:
          FUNC0( !"no chance" );
      }

      if( rc==LSM_OK ){
        FUNC11("%s\n", z ? z : "");
        FUNC2(stdout);
      }
      FUNC5(FUNC6(pDb), z);
    }else{
      int iRes = -1;
      FUNC4(pDb, eOpt, &iRes);
      FUNC11("%d\n", iRes);
      FUNC2(stdout);
    }
  }

  FUNC3(pDb);
  return rc;

 usage:
  FUNC16("DATABASE ?array|page-ascii|page-hex PGNO?");
  return -1;
}