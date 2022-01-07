
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (char*,long,int,int *) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 int rewind (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc64 (long) ;

__attribute__((used)) static char *readFile(const char *zName, int *pnByte){
  FILE *in = fopen(zName, "rb");
  long nIn;
  size_t nRead;
  char *pBuf;
  if( in==0 ) return 0;
  fseek(in, 0, SEEK_END);
  nIn = ftell(in);
  rewind(in);
  pBuf = sqlite3_malloc64( nIn+1 );
  if( pBuf==0 ) return 0;
  nRead = fread(pBuf, nIn, 1, in);
  fclose(in);
  if( nRead!=1 ){
    sqlite3_free(pBuf);
    return 0;
  }
  pBuf[nIn] = 0;
  if( pnByte ) *pnByte = nIn;
  return pBuf;
}
