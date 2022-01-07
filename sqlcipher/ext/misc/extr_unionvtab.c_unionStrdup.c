
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sqlite3_int64 ;


 int memcpy (char*,char const*,size_t) ;
 scalar_t__ strlen (char const*) ;
 char* unionMalloc (int*,scalar_t__) ;

__attribute__((used)) static char *unionStrdup(int *pRc, const char *zIn){
  char *zRet = 0;
  if( zIn ){
    sqlite3_int64 nByte = strlen(zIn) + 1;
    zRet = unionMalloc(pRc, nByte);
    if( zRet ){
      memcpy(zRet, zIn, (size_t)nByte);
    }
  }
  return zRet;
}
