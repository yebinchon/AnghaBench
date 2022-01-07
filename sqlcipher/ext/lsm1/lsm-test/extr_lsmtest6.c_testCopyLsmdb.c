
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_file (char const*,char const*,int) ;
 int testFree (char*) ;
 char* testMallocPrintf (char*,char const*) ;
 int unlink (char const*) ;

void testCopyLsmdb(const char *zFrom, const char *zTo){
  char *zLog1 = testMallocPrintf("%s-log", zFrom);
  char *zLog2 = testMallocPrintf("%s-log", zTo);
  char *zShm1 = testMallocPrintf("%s-shm", zFrom);
  char *zShm2 = testMallocPrintf("%s-shm", zTo);

  unlink(zShm2);
  unlink(zLog2);
  unlink(zTo);
  copy_file(zFrom, zTo, 1);
  copy_file(zLog1, zLog2, 0);
  copy_file(zShm1, zShm2, 0);

  testFree(zLog1); testFree(zLog2); testFree(zShm1); testFree(zShm2);
}
