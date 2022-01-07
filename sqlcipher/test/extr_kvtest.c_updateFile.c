
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;
typedef int FILE ;


 int fatalError (char*,...) ;
 int fclose (int *) ;
 int fflush (int *) ;
 scalar_t__ fileSize (char const*) ;
 int fileno (int *) ;
 int * fopen (char const*,char const*) ;
 int fsync (int ) ;
 size_t fwrite (unsigned char*,int,size_t,int *) ;
 int sqlite3_free (unsigned char*) ;
 unsigned char* sqlite3_malloc64 (scalar_t__) ;
 int sqlite3_randomness (int,unsigned char*) ;

__attribute__((used)) static void updateFile(const char *zName, sqlite3_int64 *pnByte, int doFsync){
  FILE *out;
  sqlite3_int64 sz;
  size_t nWritten;
  unsigned char *pBuf;
  const char *zMode = "wb";

  sz = fileSize(zName);
  if( sz<0 ){
    fatalError("No such file: \"%s\"", zName);
  }
  *pnByte = sz;
  if( sz==0 ) return;
  pBuf = sqlite3_malloc64( sz );
  if( pBuf==0 ){
    fatalError("Cannot allocate %lld bytes\n", sz);
  }
  sqlite3_randomness((int)sz, pBuf);



  out = fopen(zName, zMode);
  if( out==0 ){
    fatalError("Cannot open \"%s\" for writing\n", zName);
  }
  nWritten = fwrite(pBuf, 1, (size_t)sz, out);
  if( doFsync ){



    fsync(fileno(out));

  }
  fclose(out);
  if( nWritten!=(size_t)sz ){
    fatalError("Wrote only %d of %d bytes to \"%s\"\n",
               (int)nWritten, (int)sz, zName);
  }
  sqlite3_free(pBuf);
}
