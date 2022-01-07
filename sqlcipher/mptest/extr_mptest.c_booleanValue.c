
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int errorMessage (char*,char*) ;
 scalar_t__ sqlite3_stricmp (char*,char*) ;

__attribute__((used)) static int booleanValue(char *zArg){
  int i;
  if( zArg==0 ) return 0;
  for(i=0; zArg[i]>='0' && zArg[i]<='9'; i++){}
  if( i>0 && zArg[i]==0 ) return atoi(zArg);
  if( sqlite3_stricmp(zArg, "on")==0 || sqlite3_stricmp(zArg,"yes")==0 ){
    return 1;
  }
  if( sqlite3_stricmp(zArg, "off")==0 || sqlite3_stricmp(zArg,"no")==0 ){
    return 0;
  }
  errorMessage("unknown boolean: [%s]", zArg);
  return 0;
}
