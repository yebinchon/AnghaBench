
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int azName ;


 scalar_t__ sqlite3_stricmp (char const*,char const*) ;

__attribute__((used)) static int fts3ShadowName(const char *zName){
  static const char *azName[] = {
    "content", "docsize", "segdir", "segments", "stat",
  };
  unsigned int i;
  for(i=0; i<sizeof(azName)/sizeof(azName[0]); i++){
    if( sqlite3_stricmp(zName, azName[i])==0 ) return 1;
  }
  return 0;
}
