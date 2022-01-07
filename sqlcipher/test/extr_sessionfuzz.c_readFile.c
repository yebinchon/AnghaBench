
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;
typedef int FILE ;


 int SEEK_END ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread (char*,int,long,int *) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 int rewind (int *) ;
 char* sqlite3_malloc64 (long) ;
 int stderr ;

__attribute__((used)) static void readFile(const char *zName, void **ppData, int *pnData){
  FILE *in = fopen(zName, "rb");
  long nIn;
  size_t nRead;
  char *pBuf;
  *ppData = 0;
  *pnData = 0;
  if( in==0 ){
    fprintf(stderr, "Cannot open \"%s\" for reading\n", zName);
    exit(1);
  }
  fseek(in, 0, SEEK_END);
  nIn = ftell(in);
  rewind(in);
  pBuf = sqlite3_malloc64( nIn+1 );
  if( pBuf==0 ){
    fprintf(stderr, "Failed to malloc %lld bytes\n", (sqlite3_int64)(nIn+1));
    exit(1);
  }
  nRead = fread(pBuf, 1, nIn, in);
  fclose(in);
  if( nRead!=(size_t)nIn ){
    fprintf(stderr, "Read only %d of %d bytes from %s\n", (int)nRead, (int)nIn,
                    zName);
    exit(1);
  }
  pBuf[nIn] = 0;
  *pnData = nIn;
  *ppData = pBuf;
}
