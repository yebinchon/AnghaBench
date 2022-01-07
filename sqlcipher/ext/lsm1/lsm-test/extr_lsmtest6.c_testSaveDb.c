
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_file (char const*,char*,int) ;
 int testFree (char*) ;
 char* testMallocPrintf (char*,char const*,...) ;
 int unlink (char*) ;

void testSaveDb(const char *zFile, const char *zAux){
  char *zLog = testMallocPrintf("%s-%s", zFile, zAux);
  char *zFileSave = testMallocPrintf("%s-save", zFile);
  char *zLogSave = testMallocPrintf("%s-%s-save", zFile, zAux);

  unlink(zFileSave);
  unlink(zLogSave);
  copy_file(zFile, zFileSave, 1);
  copy_file(zLog, zLogSave, 0);

  testFree(zLog); testFree(zFileSave); testFree(zLogSave);
}
