
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int OomTest ;


 int strlen (char const*) ;
 int testOomWrite (int *,int *,void*,int,void*,int,int*) ;

__attribute__((used)) static void testOomWriteStr(
  OomTest *pOom,
  lsm_db *pDb,
  const char *zKey,
  const char *zVal,
  int *pRc
){
  int nKey = strlen(zKey);
  int nVal = strlen(zVal);
  testOomWrite(pOom, pDb, (void *)zKey, nKey, (void *)zVal, nVal, pRc);
}
