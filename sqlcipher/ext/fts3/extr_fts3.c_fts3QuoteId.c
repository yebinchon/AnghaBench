
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;


 char* sqlite3_malloc64 (int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *fts3QuoteId(char const *zInput){
  sqlite3_int64 nRet;
  char *zRet;
  nRet = 2 + (int)strlen(zInput)*2 + 1;
  zRet = sqlite3_malloc64(nRet);
  if( zRet ){
    int i;
    char *z = zRet;
    *(z++) = '"';
    for(i=0; zInput[i]; i++){
      if( zInput[i]=='"' ) *(z++) = '"';
      *(z++) = zInput[i];
    }
    *(z++) = '"';
    *(z++) = '\0';
  }
  return zRet;
}
