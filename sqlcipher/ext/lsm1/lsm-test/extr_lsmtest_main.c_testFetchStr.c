
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int strlen (char const*) ;
 int testFetch (int *,void*,int,void*,int,int*) ;

void testFetchStr(
  TestDb *pDb,
  const char *zKey,
  const char *zVal,
  int *pRc
){
  int nVal = (zVal ? strlen(zVal) : 0);
  testFetch(pDb, (void *)zKey, strlen(zKey), (void *)zVal, nVal, pRc);
}
