
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_file (char*,char const*,int) ;
 int testFree (char*) ;
 char* testMallocPrintf (char*,char const*,...) ;

void testRestoreDb(const char *zFile, const char *zAux){
  char *zLog = testMallocPrintf("%s-%s", zFile, zAux);
  char *zFileSave = testMallocPrintf("%s-save", zFile);
  char *zLogSave = testMallocPrintf("%s-%s-save", zFile, zAux);

  copy_file(zFileSave, zFile, 1);
  copy_file(zLogSave, zLog, 0);

  testFree(zLog); testFree(zFileSave); testFree(zLogSave);
}
