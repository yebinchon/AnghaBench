
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int testPrintError (char*,char const*,...) ;

__attribute__((used)) static void argError(void *aData, const char *zType, int sz, const char *zArg){
  struct Entry { const char *zName; };
  struct Entry *pEntry;
  const char *zPrev = 0;

  testPrintError("unrecognized %s \"%s\": must be ", zType, zArg);
  for(pEntry=(struct Entry *)aData;
      pEntry->zName;
      pEntry=(struct Entry *)&((unsigned char *)pEntry)[sz]
  ){
    if( zPrev ){ testPrintError("%s, ", zPrev); }
    zPrev = pEntry->zName;
  }
  testPrintError("or %s\n", zPrev);
}
