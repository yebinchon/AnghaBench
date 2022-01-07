
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct Option TYPE_1__ ;


typedef int lsm_db ;
struct Option {char const* zName; int bConfig; int eOpt; } ;


 int LSM_CONFIG_BLOCK_SIZE ;
 int LSM_CONFIG_PAGE_SIZE ;






 int LSM_OK ;
 int assert (int) ;
 unsigned int atoi (char*) ;
 int fflush (int ) ;
 int lsm_close (int *) ;
 int lsm_config (int *,int,int*) ;
 int lsm_free (int ,char*) ;
 int lsm_get_env (int *) ;
 int lsm_info (int *,int,...) ;
 int lsm_new (int ,int **) ;
 int lsm_open (int *,char const*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int printf (char*,...) ;
 int stdout ;
 int strlen (char*) ;
 int tdb_lsm_configure (int *,char const*) ;
 int testArgSelect (TYPE_1__*,char*,char*,int*) ;
 int testPrintError (char*,int) ;
 int testPrintUsage (char*) ;

int do_show(int nArg, char **azArg){
  lsm_db *pDb;
  int rc;
  const char *zDb;

  int eOpt = 131;
  unsigned int iPg = 0;
  int bConfig = 0;
  const char *zConfig = "";

  struct Option {
    const char *zName;
    int bConfig;
    int eOpt;
  } aOpt [] = {
    { "array", 0, 132 },
    { "array-pages", 0, 133 },
    { "blocksize", 1, LSM_CONFIG_BLOCK_SIZE },
    { "pagesize", 1, LSM_CONFIG_PAGE_SIZE },
    { "freelist", 0, 130 },
    { "page-ascii", 0, 129 },
    { "page-hex", 0, 128 },
    { 0, 0 }
  };

  char *z = 0;
  int iDb = 0;


  if( nArg>2 && strlen(azArg[0])>1
   && memcmp(azArg[0], "-config", strlen(azArg[0]))==0
  ){
    zConfig = azArg[1];
    iDb = 2;
  }
  if( nArg<(iDb+1) ) goto usage;

  if( nArg>(iDb+1) ){
    rc = testArgSelect(aOpt, "option", azArg[iDb+1], &eOpt);
    if( rc!=0 ) return rc;
    bConfig = aOpt[eOpt].bConfig;
    eOpt = aOpt[eOpt].eOpt;
    if( (bConfig==0 && eOpt==130)
     || (bConfig==1 && eOpt==LSM_CONFIG_BLOCK_SIZE)
     || (bConfig==1 && eOpt==LSM_CONFIG_PAGE_SIZE)
    ){
      if( nArg!=(iDb+2) ) goto usage;
    }else{
      if( nArg!=(iDb+3) ) goto usage;
      iPg = atoi(azArg[iDb+2]);
    }
  }
  zDb = azArg[iDb];

  rc = lsm_new(0, &pDb);
  tdb_lsm_configure(pDb, zConfig);
  if( rc!=LSM_OK ){
    testPrintError("lsm_new(): rc=%d\n", rc);
  }else{
    rc = lsm_open(pDb, zDb);
    if( rc!=LSM_OK ){
      testPrintError("lsm_open(): rc=%d\n", rc);
    }
  }

  if( rc==LSM_OK ){
    if( bConfig==0 ){
      switch( eOpt ){
        case 131:
        case 130:
          rc = lsm_info(pDb, eOpt, &z);
          break;
        case 132:
        case 133:
        case 129:
        case 128:
          rc = lsm_info(pDb, eOpt, iPg, &z);
          break;
        default:
          assert( !"no chance" );
      }

      if( rc==LSM_OK ){
        printf("%s\n", z ? z : "");
        fflush(stdout);
      }
      lsm_free(lsm_get_env(pDb), z);
    }else{
      int iRes = -1;
      lsm_config(pDb, eOpt, &iRes);
      printf("%d\n", iRes);
      fflush(stdout);
    }
  }

  lsm_close(pDb);
  return rc;

 usage:
  testPrintUsage("DATABASE ?array|page-ascii|page-hex PGNO?");
  return -1;
}
