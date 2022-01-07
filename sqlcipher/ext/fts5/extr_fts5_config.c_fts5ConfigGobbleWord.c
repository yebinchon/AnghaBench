
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 char* fts5ConfigSkipBareword (char const*) ;
 int fts5Dequote (char*) ;
 scalar_t__ fts5_isopenquote (char) ;
 int memcpy (char*,char const*,size_t) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc64 (scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static const char *fts5ConfigGobbleWord(
  int *pRc,
  const char *zIn,
  char **pzOut,
  int *pbQuoted
){
  const char *zRet = 0;

  sqlite3_int64 nIn = strlen(zIn);
  char *zOut = sqlite3_malloc64(nIn+1);

  assert( *pRc==SQLITE_OK );
  *pbQuoted = 0;
  *pzOut = 0;

  if( zOut==0 ){
    *pRc = SQLITE_NOMEM;
  }else{
    memcpy(zOut, zIn, (size_t)(nIn+1));
    if( fts5_isopenquote(zOut[0]) ){
      int ii = fts5Dequote(zOut);
      zRet = &zIn[ii];
      *pbQuoted = 1;
    }else{
      zRet = fts5ConfigSkipBareword(zIn);
      if( zRet ){
        zOut[zRet-zIn] = '\0';
      }
    }
  }

  if( zRet==0 ){
    sqlite3_free(zOut);
  }else{
    *pzOut = zOut;
  }

  return zRet;
}
