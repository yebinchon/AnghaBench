
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_uint64 ;
typedef int sqlite3 ;
typedef int FILE ;


 scalar_t__ ISSPACE (char) ;
 int SEEK_END ;
 int SEEK_SET ;
 void* asciiToUtf16le (char*) ;
 int exit (int) ;
 int finalizeTime ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int fread (char*,int,int,int *) ;
 int free (void*) ;
 int fseek (int *,long,int ) ;
 int ftell (int *) ;
 char* malloc (int) ;
 int prepTime ;
 int prepareAndRun (int *,char*) ;
 int printf (char*,...) ;
 int runTime ;
 int sqlite3Hwtime () ;
 int sqlite3_close (int *) ;
 int sqlite3_complete (char*) ;
 int sqlite3_libversion_number () ;
 int sqlite3_open16 (void*,int **) ;
 int stderr ;
 int unlink (char*) ;

int main(int argc, char **argv){
  void *utf16;
  sqlite3 *db;
  int rc;
  int nSql;
  char *zSql;
  int i, j;
  FILE *in;
  sqlite_uint64 iStart, iElapse;
  sqlite_uint64 iSetup = 0;
  int nStmt = 0;
  int nByte = 0;

  if( argc!=3 ){
    fprintf(stderr, "Usage: %s FILENAME SQL-SCRIPT\n"
                    "Runs SQL-SCRIPT as UTF16 against a UTF16 database\n",
                    argv[0]);
    exit(1);
  }
  in = fopen(argv[2], "r");
  fseek(in, 0L, SEEK_END);
  nSql = ftell(in);
  zSql = malloc( nSql+1 );
  fseek(in, 0L, SEEK_SET);
  nSql = fread(zSql, 1, nSql, in);
  zSql[nSql] = 0;

  printf("SQLite version: %d\n", sqlite3_libversion_number());
  unlink(argv[1]);
  utf16 = asciiToUtf16le(argv[1]);
  iStart = sqlite3Hwtime();
  rc = sqlite3_open16(utf16, &db);
  iElapse = sqlite3Hwtime() - iStart;
  iSetup = iElapse;
  printf("sqlite3_open16() returns %d in %llu cycles\n", rc, iElapse);
  free(utf16);
  for(i=j=0; j<nSql; j++){
    if( zSql[j]==';' ){
      int isComplete;
      char c = zSql[j+1];
      zSql[j+1] = 0;
      isComplete = sqlite3_complete(&zSql[i]);
      zSql[j+1] = c;
      if( isComplete ){
        zSql[j] = 0;
        while( i<j && ISSPACE(zSql[i]) ){ i++; }
        if( i<j ){
          nStmt++;
          nByte += j-i;
          prepareAndRun(db, &zSql[i]);
        }
        zSql[j] = ';';
        i = j+1;
      }
    }
  }
  iStart = sqlite3Hwtime();
  sqlite3_close(db);
  iElapse = sqlite3Hwtime() - iStart;
  iSetup += iElapse;
  printf("sqlite3_close() returns in %llu cycles\n", iElapse);
  printf("\n");
  printf("Statements run:       %15d\n", nStmt);
  printf("Bytes of SQL text:    %15d\n", nByte);
  printf("Total prepare time:   %15llu cycles\n", prepTime);
  printf("Total run time:       %15llu cycles\n", runTime);
  printf("Total finalize time:  %15llu cycles\n", finalizeTime);
  printf("Open/Close time:      %15llu cycles\n", iSetup);
  printf("Total Time:           %15llu cycles\n",
      prepTime + runTime + finalizeTime + iSetup);
  return 0;
}
