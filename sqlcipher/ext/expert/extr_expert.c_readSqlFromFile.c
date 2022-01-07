
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3expert ;
typedef int FILE ;


 int SEEK_END ;
 int SQLITE_ERROR ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (char*,long,int,int *) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 int rewind (int *) ;
 int sqlite3_expert_sql (int *,char*,char**) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc64 (long) ;
 char* sqlite3_mprintf (char*,char const*) ;

__attribute__((used)) static int readSqlFromFile(sqlite3expert *p, const char *zFile, char **pzErr){
  FILE *in = fopen(zFile, "rb");
  long nIn;
  size_t nRead;
  char *pBuf;
  int rc;
  if( in==0 ){
    *pzErr = sqlite3_mprintf("failed to open file %s\n", zFile);
    return SQLITE_ERROR;
  }
  fseek(in, 0, SEEK_END);
  nIn = ftell(in);
  rewind(in);
  pBuf = sqlite3_malloc64( nIn+1 );
  nRead = fread(pBuf, nIn, 1, in);
  fclose(in);
  if( nRead!=1 ){
    sqlite3_free(pBuf);
    *pzErr = sqlite3_mprintf("failed to read file %s\n", zFile);
    return SQLITE_ERROR;
  }
  pBuf[nIn] = 0;
  rc = sqlite3_expert_sql(p, pBuf, pzErr);
  sqlite3_free(pBuf);
  return rc;
}
