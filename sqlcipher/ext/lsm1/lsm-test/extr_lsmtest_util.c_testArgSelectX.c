
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int argError (void*,char const*,int,char const*) ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 int strlen (char const*) ;

int testArgSelectX(
  void *aData,
  const char *zType,
  int sz,
  const char *zArg,
  int *piOut
){
  struct Entry { const char *zName; };
  struct Entry *pEntry;
  int nArg = strlen(zArg);

  int i = 0;
  int iOut = -1;
  int nOut = 0;

  for(pEntry=(struct Entry *)aData;
      pEntry->zName;
      pEntry=(struct Entry *)&((unsigned char *)pEntry)[sz]
  ){
    int nName = strlen(pEntry->zName);
    if( nArg<=nName && memcmp(pEntry->zName, zArg, nArg)==0 ){
      iOut = i;
      if( nName==nArg ){
        nOut = 1;
        break;
      }
      nOut++;
    }
    i++;
  }

  if( nOut!=1 ){
    argError(aData, zType, sz, zArg);
  }else{
    *piOut = iOut;
  }
  return (nOut!=1);
}
