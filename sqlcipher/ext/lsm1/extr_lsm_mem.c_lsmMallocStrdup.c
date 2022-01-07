
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_env ;


 char* lsmMalloc (int *,int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

char *lsmMallocStrdup(lsm_env *pEnv, const char *zIn){
  int nByte;
  char *zRet;
  nByte = strlen(zIn);
  zRet = lsmMalloc(pEnv, nByte+1);
  if( zRet ){
    memcpy(zRet, zIn, nByte+1);
  }
  return zRet;
}
