
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int memcpy (char*,char const*,size_t) ;
 scalar_t__ sqlite3_malloc64 (size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static char *rbuStrndup(const char *zStr, int *pRc){
  char *zRet = 0;

  assert( *pRc==SQLITE_OK );
  if( zStr ){
    size_t nCopy = strlen(zStr) + 1;
    zRet = (char*)sqlite3_malloc64(nCopy);
    if( zRet ){
      memcpy(zRet, zStr, nCopy);
    }else{
      *pRc = SQLITE_NOMEM;
    }
  }

  return zRet;
}
