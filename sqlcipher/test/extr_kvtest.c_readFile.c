
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fileSize (char const*) ;
 int * fopen (char const*,char*) ;
 size_t fread (unsigned char*,size_t,int,int *) ;
 int sqlite3_free (unsigned char*) ;
 unsigned char* sqlite3_malloc64 (scalar_t__) ;

__attribute__((used)) static unsigned char *readFile(const char *zName, sqlite3_int64 *pnByte){
  FILE *in;
  sqlite3_int64 nIn;
  size_t nRead;
  unsigned char *pBuf;

  nIn = fileSize(zName);
  if( nIn<0 ) return 0;
  in = fopen(zName, "rb");
  if( in==0 ) return 0;
  pBuf = sqlite3_malloc64( nIn );
  if( pBuf==0 ) return 0;
  nRead = fread(pBuf, (size_t)nIn, 1, in);
  fclose(in);
  if( nRead!=1 ){
    sqlite3_free(pBuf);
    return 0;
  }
  if( pnByte ) *pnByte = nIn;
  return pBuf;
}
