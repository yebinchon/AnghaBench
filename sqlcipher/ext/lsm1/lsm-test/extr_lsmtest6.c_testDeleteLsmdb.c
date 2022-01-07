
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int testFree (char*) ;
 char* testMallocPrintf (char*,char const*) ;
 int unlink (char const*) ;

void testDeleteLsmdb(const char *zFile){
  char *zLog = testMallocPrintf("%s-log", zFile);
  char *zShm = testMallocPrintf("%s-shm", zFile);
  unlink(zFile);
  unlink(zLog);
  unlink(zShm);
  testFree(zLog);
  testFree(zShm);
}
