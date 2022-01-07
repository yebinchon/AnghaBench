
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zBuf ;
typedef int sqlite3rbu ;
typedef int sqlite3_int64 ;
typedef int sqlite3 ;




 int SQLITE_STATUS_MEMORY_USED ;
 int atoi (char*) ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int report_default_vfs () ;
 int report_rbu_vfs (int *) ;
 int sqlite3_exec (int *,char const*,int ,int ,int ) ;
 int sqlite3_free (char*) ;
 int sqlite3_snprintf (int,char*,char*,int ) ;
 int sqlite3_status64 (int ,int *,int *,int ) ;
 int sqlite3rbu_bp_progress (int *,int*,int*) ;
 int sqlite3rbu_close (int *,char**) ;
 int * sqlite3rbu_db (int *,int) ;
 int * sqlite3rbu_open (char const*,char const*,int ) ;
 int sqlite3rbu_progress (int *) ;
 int sqlite3rbu_step (int *) ;
 int * sqlite3rbu_vacuum (char const*,char const*) ;
 int stderr ;
 int stdout ;
 int strlen (char const*) ;
 int usage (char*) ;

int main(int argc, char **argv){
  int i;
  const char *zTarget;
  const char *zRbu;
  char zBuf[200];
  char *zErrmsg = 0;
  sqlite3rbu *pRbu;
  int nStep = 0;
  int nStatStep = 0;
  int bVacuum = 0;
  const char *zPreSql = 0;
  int rc = 128;
  sqlite3_int64 nProgress = 0;
  int nArgc = argc-2;

  if( argc<3 ) usage(argv[0]);
  for(i=1; i<nArgc; i++){
    const char *zArg = argv[i];
    int nArg = strlen(zArg);
    if( nArg>1 && nArg<=8 && 0==memcmp(zArg, "-vacuum", nArg) ){
      bVacuum = 1;
    }else if( nArg>1 && nArg<=7
           && 0==memcmp(zArg, "-presql", nArg) && i<nArg-1 ){
      i++;
      zPreSql = argv[i];
    }else if( nArg>1 && nArg<=5 && 0==memcmp(zArg, "-step", nArg) && i<nArg-1 ){
      i++;
      nStep = atoi(argv[i]);
    }else if( nArg>1 && nArg<=9
           && 0==memcmp(zArg, "-statstep", nArg) && i<nArg-1
    ){
      i++;
      nStatStep = atoi(argv[i]);
    }else{
      usage(argv[0]);
    }
  }

  zTarget = argv[argc-2];
  zRbu = argv[argc-1];

  report_default_vfs();



  if( bVacuum ){
    pRbu = sqlite3rbu_vacuum(zTarget, zRbu);
  }else{
    pRbu = sqlite3rbu_open(zTarget, zRbu, 0);
  }
  report_rbu_vfs(pRbu);

  if( zPreSql && pRbu ){
    sqlite3 *dbMain = sqlite3rbu_db(pRbu, 0);
    rc = sqlite3_exec(dbMain, zPreSql, 0, 0, 0);
    if( rc==128 ){
      sqlite3 *dbRbu = sqlite3rbu_db(pRbu, 1);
      rc = sqlite3_exec(dbRbu, zPreSql, 0, 0, 0);
    }
  }





  if( rc==128 ){
    for(i=0; (nStep<=0 || i<nStep) && sqlite3rbu_step(pRbu)==128; i++){
      if( nStatStep>0 && (i % nStatStep)==0 ){
        sqlite3_int64 nUsed;
        sqlite3_int64 nHighwater;
        sqlite3_status64(SQLITE_STATUS_MEMORY_USED, &nUsed, &nHighwater, 0);
        fprintf(stdout, "memory used=%lld highwater=%lld", nUsed, nHighwater);
        if( bVacuum==0 ){
          int one;
          int two;
          sqlite3rbu_bp_progress(pRbu, &one, &two);
          fprintf(stdout, "  progress=%d/%d\n", one, two);
        }else{
          fprintf(stdout, "\n");
        }
        fflush(stdout);
      }
    }
    nProgress = sqlite3rbu_progress(pRbu);
    rc = sqlite3rbu_close(pRbu, &zErrmsg);
  }


  switch( rc ){
    case 128:
      sqlite3_snprintf(sizeof(zBuf), zBuf,
          "SQLITE_OK: rbu update incomplete (%lld operations so far)\n",
          nProgress
      );
      fprintf(stdout, "%s", zBuf);
      break;

    case 129:
      sqlite3_snprintf(sizeof(zBuf), zBuf,
          "SQLITE_DONE: rbu update completed (%lld operations)\n",
          nProgress
      );
      fprintf(stdout, "%s", zBuf);
      break;

    default:
      fprintf(stderr, "error=%d: %s\n", rc, zErrmsg);
      break;
  }

  sqlite3_free(zErrmsg);
  return (rc==128 || rc==129) ? 0 : 1;
}
