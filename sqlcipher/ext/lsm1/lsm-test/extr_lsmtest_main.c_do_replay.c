
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zLine ;
typedef int lsm_file ;
struct TYPE_4__ {int (* xOpen ) (TYPE_1__*,char const*,int ,int **) ;int (* xSync ) (int *) ;int (* xWrite ) (int *,int,char*,int) ;int (* xClose ) (int *) ;} ;
typedef TYPE_1__ lsm_env ;
typedef int aBuf ;
typedef int FILE ;


 int LSM_OK ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memset (char*,int,int) ;
 int sscanf (char*,char*,int*,int*) ;
 int * stdin ;
 scalar_t__ strcmp (char*,char*) ;
 int stub1 (TYPE_1__*,char const*,int ,int **) ;
 int stub2 (int *) ;
 int stub3 (int *,int,char*,int) ;
 int stub4 (int *) ;
 TYPE_1__* tdb_lsm_env () ;
 int testPrintError (char*) ;

__attribute__((used)) static int do_replay(int nArg, char **azArg){
  char aBuf[4096];
  FILE *pInput;
  FILE *pClose = 0;
  const char *zDb;

  lsm_env *pEnv;
  lsm_file *pOut;
  int rc;

  if( nArg!=2 ){
    testPrintError("Usage: replay WRITELOG FILE\n");
    return 1;
  }

  if( strcmp(azArg[0], "-")==0 ){
    pInput = stdin;
  }else{
    pClose = pInput = fopen(azArg[0], "r");
  }
  zDb = azArg[1];
  pEnv = tdb_lsm_env();
  rc = pEnv->xOpen(pEnv, zDb, 0, &pOut);
  if( rc!=LSM_OK ) return rc;

  while( feof(pInput)==0 ){
    char zLine[80];
    fgets(zLine, sizeof(zLine)-1, pInput);
    zLine[sizeof(zLine)-1] = '\0';

    if( 0==memcmp("sync db", zLine, 7) ){
      rc = pEnv->xSync(pOut);
      if( rc!=0 ) break;
    }else{
      int iOff;
      int nData;
      int nMatch;
      nMatch = sscanf(zLine, "write db %d %d", &iOff, &nData);
      if( nMatch==2 ){
        int i;
        for(i=0; i<nData; i+=sizeof(aBuf)){
          memset(aBuf, i&0xFF, sizeof(aBuf));
          rc = pEnv->xWrite(pOut, iOff+i, aBuf, sizeof(aBuf));
          if( rc!=0 ) break;
        }
      }
    }
  }
  if( pClose ) fclose(pClose);
  pEnv->xClose(pOut);

  return rc;
}
