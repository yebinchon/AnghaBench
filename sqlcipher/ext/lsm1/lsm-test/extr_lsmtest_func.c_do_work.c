
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct Option TYPE_1__ ;


typedef int lsm_db ;
struct Option {char const* zName; } ;


 int LSM_CONFIG_AUTOCHECKPOINT ;
 int LSM_CONFIG_BLOCK_SIZE ;
 int LSM_OK ;
 int atoi (char*) ;
 int lsm_checkpoint (int *,int ) ;
 int lsm_close (int *) ;
 int lsm_config (int *,int ,int*) ;
 int lsm_new (int ,int **) ;
 int lsm_open (int *,char const*) ;
 int lsm_work (int *,int,int,int ) ;
 int testArgSelect (TYPE_1__*,char*,char*,int*) ;
 int testPrintError (char*,int) ;
 int testPrintUsage (char*) ;

int do_work(int nArg, char **azArg){
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
    rc = testArgSelect(aOpt, "option", azArg[i], &iSel);
    if( rc ) return rc;
    switch( iSel ){
      case 0:
        i++;
        if( i==(nArg-1) ) goto usage;
        nMerge = atoi(azArg[i]);
        break;
      case 1:
        i++;
        if( i==(nArg-1) ) goto usage;
        nKB = atoi(azArg[i]);
        break;
    }
  }

  rc = lsm_new(0, &pDb);
  if( rc!=LSM_OK ){
    testPrintError("lsm_open(): rc=%d\n", rc);
  }else{
    rc = lsm_open(pDb, zDb);
    if( rc!=LSM_OK ){
      testPrintError("lsm_open(): rc=%d\n", rc);
    }else{
      int n = -1;
      lsm_config(pDb, LSM_CONFIG_BLOCK_SIZE, &n);
      n = n*2;
      lsm_config(pDb, LSM_CONFIG_AUTOCHECKPOINT, &n);

      rc = lsm_work(pDb, nMerge, nKB, 0);
      if( rc!=LSM_OK ){
        testPrintError("lsm_work(): rc=%d\n", rc);
      }
    }
  }
  if( rc==LSM_OK ){
    rc = lsm_checkpoint(pDb, 0);
  }

  lsm_close(pDb);
  return rc;

 usage:
  testPrintUsage("?-optimize? ?-n N? DATABASE");
  return -1;
}
